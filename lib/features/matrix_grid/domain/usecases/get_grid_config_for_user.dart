import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/error/failure.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

@injectable
class GetGridConfigForUser implements UseCase<User, String> {
  GetGridConfigForUser(this._repository);

  final UserRepository _repository;

  @override
  Future<Result<User>> call(String phoneNumber) async {
    final result = await _repository.lookupByPhone(phoneNumber);
    return switch (result) {
      Success(value: final user?) => Success(user),
      Success() => const ResultError(NotFoundFailure('User not found')),
      ResultError(:final failure) => ResultError(failure),
    };
  }
}
