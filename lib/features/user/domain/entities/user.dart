import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
abstract class User with _$User {
  const factory User({
    required String phoneNumber,
    required String username,
    required int matrixNumber,
    required bool isSubmitted,
    required DateTime createdAt,
    DateTime? submittedAt,
    Map<String, int>? committedColors,
  }) = _User;
}
