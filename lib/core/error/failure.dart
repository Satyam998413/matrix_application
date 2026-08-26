sealed class Failure {
  const Failure(this.message);

  final String message;
}

final class CacheFailure extends Failure {
  const CacheFailure([super.message = 'Could not reach local storage']);
}

final class ValidationFailure extends Failure {
  const ValidationFailure(super.message);
}

final class NotFoundFailure extends Failure {
  const NotFoundFailure([super.message = 'Not found']);
}

final class UnexpectedFailure extends Failure {
  const UnexpectedFailure([super.message = 'Something went wrong']);
}
