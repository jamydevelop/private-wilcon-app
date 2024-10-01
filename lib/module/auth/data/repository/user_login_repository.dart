import "package:either_dart/either.dart";
import "package:injectable/injectable.dart";
import "../../../../app/failure/failure.dart";
import "../../domain/entity/user.entity.dart";
import "../../domain/entity/user_login.entity.dart";
import "../data_source/user_login.data_source.dart";
import "../mapper/failure_login.mapper.dart";
import "../model/user/user.model.dart";
import "../model/user_credential/user_login_credential.model.dart";

@injectable // Add @injectable to register in locator.config.dart
class UserLoginRepository {
  UserLoginRepository(
      {required UserLoginDataSource userLoginDataSource,
      required FailureLoginMapper failureLoginMapper})
      : _userLoginDataSource = userLoginDataSource,
        _FailureLoginMapper = failureLoginMapper;

  final UserLoginDataSource _userLoginDataSource;
  final FailureLoginMapper _FailureLoginMapper;

  Future<Either<Failure, UserEntity>> call(
      UserLoginEntity userLoginEntity) async {
    try {
      final UserLoginCredentialModel userLoginCredentialModel =
          UserLoginCredentialModel(
        emailValue: userLoginEntity.emailValue,
        passwordValue: userLoginEntity.passwordValue,
      );
      final UserModel userModel = await _userLoginDataSource(
          userLoginCredentialModel: userLoginCredentialModel);

      return Right<Failure, UserEntity>(UserEntity(
        userId: userModel.userId,
        role: userModel.role,
        roleIdList: userModel.roleIdList,
      ));
    } catch (exception) {
      return Left<Failure, UserEntity>(_FailureLoginMapper(exception));
    }
  }
}
