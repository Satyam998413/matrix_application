import 'package:matrix_application/core/utils/result.dart';

abstract class UseCase<R, Params> {
  Future<Result<R>> call(Params params);
}

class NoParams {
  const NoParams();
}
