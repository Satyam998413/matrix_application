import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/usecases/use_case.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

class SubmitUserMatrixParams {
  const SubmitUserMatrixParams({
    required this.phoneNumber,
    required this.committedColors,
  });

  final String phoneNumber;
  final Map<String, int> committedColors;
}

@injectable
class SubmitUserMatrix implements UseCase<User, SubmitUserMatrixParams> {
  SubmitUserMatrix(this._repository);

  final UserRepository _repository;

  @override
  Future<Result<User>> call(SubmitUserMatrixParams params) {
    return _repository.submitMatrix(
      phoneNumber: params.phoneNumber,
      committedColors: params.committedColors,
    );
  }
}
