import 'package:injectable/injectable.dart';
import 'package:matrix_application/core/error/failure.dart';
import 'package:matrix_application/core/utils/result.dart';
import 'package:matrix_application/features/user/data/datasources/user_local_datasource.dart';
import 'package:matrix_application/features/user/data/models/user_model.dart';
import 'package:matrix_application/features/user/domain/entities/user.dart';
import 'package:matrix_application/features/user/domain/repositories/user_repository.dart';

@LazySingleton(as: UserRepository)
class UserRepositoryImpl implements UserRepository {
  UserRepositoryImpl(this._localDataSource);

  final UserLocalDataSource _localDataSource;

  @override
  Future<Result<User?>> lookupByPhone(String phoneNumber) async {
    try {
      final model = _localDataSource.getByPhone(phoneNumber);
      return Success(model?.toEntity());
    } catch (_) {
      return const ResultError(CacheFailure());
    }
  }

  @override
  Future<Result<User>> register({
    required String phoneNumber,
    required String username,
    required int matrixNumber,
  }) async {
    try {
      final model = UserModel(
        phoneNumber: phoneNumber,
        username: username,
        matrixNumber: matrixNumber,
        isSubmitted: false,
        createdAt: DateTime.now(),
      );
      await _localDataSource.put(model);
      return Success(model.toEntity());
    } catch (_) {
      return const ResultError(CacheFailure());
    }
  }

  @override
  Future<Result<List<User>>> getAllUsers() async {
    try {
      final users = _localDataSource.getAll().map((m) => m.toEntity()).toList()
        // Most-recently-registered user first — Hive returns insertion
        // order, which isn't what a "history" list should read as.
        ..sort((a, b) => b.createdAt.compareTo(a.createdAt));
      return Success(users);
    } catch (_) {
      return const ResultError(CacheFailure());
    }
  }

  @override
  Future<Result<User>> submitMatrix({
    required String phoneNumber,
    required Map<String, int> committedColors,
  }) async {
    try {
      final existing = _localDataSource.getByPhone(phoneNumber);
      if (existing == null) {
        return const ResultError(NotFoundFailure('User not found'));
      }
      final updated = existing.copyWith(
        isSubmitted: true,
        submittedAt: DateTime.now(),
        committedColors: committedColors,
      );
      await _localDataSource.put(updated);
      return Success(updated.toEntity());
    } catch (_) {
      return const ResultError(CacheFailure());
    }
  }
}
