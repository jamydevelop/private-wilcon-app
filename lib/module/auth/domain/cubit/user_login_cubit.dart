import "package:bloc/bloc.dart";
import "package:either_dart/either.dart";
import "package:freezed_annotation/freezed_annotation.dart";
import "package:injectable/injectable.dart";
import "package:shared_preferences/shared_preferences.dart";
import "../../../../app/failure/failure.dart";
import "../entity/user.entity.dart";
import "../entity/user_login.entity.dart";
import "../use_case/user_login.use_case.dart";

part "user_login_cubit.freezed.dart";
part "user_login_state.dart";

@injectable
class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit({
    required UserLoginUseCase getUserLoginUseCase,
  })  : _getUserLoginUseCase = getUserLoginUseCase,
        super(const UserLoginState.initial());

  final Future<SharedPreferencesWithCache> _prefs =
      SharedPreferencesWithCache.create(
          cacheOptions: const SharedPreferencesWithCacheOptions(
              allowList: <String>{"userId"}));

  final UserLoginUseCase _getUserLoginUseCase;

  Future<int> getUserID() async {
    final SharedPreferencesWithCache prefs = await _prefs;
    return prefs.getInt("userId") ?? -1;
  }

  Future<bool> login(UserLoginEntity userLoginEntity) async {
    emit(const UserLoginState.loading());

    final SharedPreferencesWithCache prefs = await _prefs;
    final Either<Failure, UserEntity> response =
        await _getUserLoginUseCase(userLoginEntity);

    if (response.isLeft) {
      // Error case: Invalid login or other issues
      emit(const UserLoginState.error());
      return false;
    }

    final UserEntity entity = response.right;
    prefs.setInt("userId", entity.userId);

    // Check if the login is successful and userId is valid
    if (entity.userId > 0) {
      emit(UserLoginState.fulfilled(
        email: userLoginEntity.emailValue,
        password: userLoginEntity.passwordValue,
      ));
      return true;
    } else {
      emit(const UserLoginState.error());
      return false;
    }
  }
}
