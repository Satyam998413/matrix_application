import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

@injectable
class LookupUserByPhone implements UseCase<User?, String> {
  LookupUserByPhone(this._repository);

  final UserRepository _repository;

  @override
  Future<Result<User?>> call(String phoneNumber) {
    return _repository.lookupByPhone(phoneNumber);
  }
}
