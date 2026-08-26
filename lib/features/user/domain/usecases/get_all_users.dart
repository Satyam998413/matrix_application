import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

@injectable
class GetAllUsers implements UseCase<List<User>, NoParams> {
  GetAllUsers(this._repository);

  final UserRepository _repository;

  @override
  Future<Result<List<User>>> call(NoParams params) {
    return _repository.getAllUsers();
  }
}
