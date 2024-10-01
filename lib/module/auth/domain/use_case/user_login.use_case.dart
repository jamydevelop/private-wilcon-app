import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";
import "../../../../app/failure/failure.dart";
import "../../data/repository/user_login_repository.dart";
import "../entity/user.entity.dart";
import "../entity/user_login.entity.dart";

@injectable
class UserLoginUseCase {
  UserLoginUseCase({
    required UserLoginRepository getUserLoginRepository,
  }) : _getUserLoginRepository = getUserLoginRepository;

  final UserLoginRepository _getUserLoginRepository;

  // Future<Object> call(UserLoginCredentialModel userLoginCredentialModel) async {
  //   // Pass the required UserLoginModelCredential to the repository
  //   final Object getUserLoginResponse =
  //       await _getUserLoginRepository(userLoginCredentialModel);

  //   return getUserLoginResponse;
  // }

  Future<Either<Failure, UserEntity>> call(
      UserLoginEntity userLoginEntity) async {
    final Either<Failure, UserEntity> getUserLoginEntity =
        await _getUserLoginRepository(userLoginEntity);
    return getUserLoginEntity;
  }
}
