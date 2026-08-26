import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

class RegisterUserParams {
  const RegisterUserParams({
    required this.phoneNumber,
    required this.username,
    required this.matrixNumber,
  });

  final String phoneNumber;
  final String username;
  final int matrixNumber;
}

@injectable
class RegisterUser implements UseCase<User, RegisterUserParams> {
  RegisterUser(this._repository);

  final UserRepository _repository;

  @override
  Future<Result<User>> call(RegisterUserParams params) {
    return _repository.register(
      phoneNumber: params.phoneNumber,
      username: params.username,
      matrixNumber: params.matrixNumber,
    );
  }
}
