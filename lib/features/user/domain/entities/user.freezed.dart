// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$User {

 String get phoneNumber; String get username; int get matrixNumber; bool get isSubmitted; DateTime get createdAt; DateTime? get submittedAt; Map<String, int>? get committedColors;
/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserCopyWith<User> get copyWith => _$UserCopyWithImpl<User>(this as User, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is User&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.username, username) || other.username == username)&&(identical(other.matrixNumber, matrixNumber) || other.matrixNumber == matrixNumber)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&const DeepCollectionEquality().equals(other.committedColors, committedColors));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,username,matrixNumber,isSubmitted,createdAt,submittedAt,const DeepCollectionEquality().hash(committedColors));

@override
String toString() {
  return 'User(phoneNumber: $phoneNumber, username: $username, matrixNumber: $matrixNumber, isSubmitted: $isSubmitted, createdAt: $createdAt, submittedAt: $submittedAt, committedColors: $committedColors)';
}


}

/// @nodoc
abstract mixin class $UserCopyWith<$Res>  {
  factory $UserCopyWith(User value, $Res Function(User) _then) = _$UserCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, String username, int matrixNumber, bool isSubmitted, DateTime createdAt, DateTime? submittedAt, Map<String, int>? committedColors
});




}
/// @nodoc
class _$UserCopyWithImpl<$Res>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._self, this._then);

  final User _self;
  final $Res Function(User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? username = null,Object? matrixNumber = null,Object? isSubmitted = null,Object? createdAt = null,Object? submittedAt = freezed,Object? committedColors = freezed,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,matrixNumber: null == matrixNumber ? _self.matrixNumber : matrixNumber // ignore: cast_nullable_to_non_nullable
as int,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,committedColors: freezed == committedColors ? _self.committedColors : committedColors // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}

}


/// Adds pattern-matching-related methods to [User].
extension UserPatterns on User {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _User value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _User value)  $default,){
final _that = this;
switch (_that) {
case _User():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _User value)?  $default,){
final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  String username,  int matrixNumber,  bool isSubmitted,  DateTime createdAt,  DateTime? submittedAt,  Map<String, int>? committedColors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.phoneNumber,_that.username,_that.matrixNumber,_that.isSubmitted,_that.createdAt,_that.submittedAt,_that.committedColors);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  String username,  int matrixNumber,  bool isSubmitted,  DateTime createdAt,  DateTime? submittedAt,  Map<String, int>? committedColors)  $default,) {final _that = this;
switch (_that) {
case _User():
return $default(_that.phoneNumber,_that.username,_that.matrixNumber,_that.isSubmitted,_that.createdAt,_that.submittedAt,_that.committedColors);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  String username,  int matrixNumber,  bool isSubmitted,  DateTime createdAt,  DateTime? submittedAt,  Map<String, int>? committedColors)?  $default,) {final _that = this;
switch (_that) {
case _User() when $default != null:
return $default(_that.phoneNumber,_that.username,_that.matrixNumber,_that.isSubmitted,_that.createdAt,_that.submittedAt,_that.committedColors);case _:
  return null;

}
}

}

/// @nodoc


class _User implements User {
  const _User({required this.phoneNumber, required this.username, required this.matrixNumber, required this.isSubmitted, required this.createdAt, this.submittedAt, final  Map<String, int>? committedColors}): _committedColors = committedColors;
  

@override final  String phoneNumber;
@override final  String username;
@override final  int matrixNumber;
@override final  bool isSubmitted;
@override final  DateTime createdAt;
@override final  DateTime? submittedAt;
 final  Map<String, int>? _committedColors;
@override Map<String, int>? get committedColors {
  final value = _committedColors;
  if (value == null) return null;
  if (_committedColors is EqualUnmodifiableMapView) return _committedColors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(value);
}


/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserCopyWith<_User> get copyWith => __$UserCopyWithImpl<_User>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _User&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.username, username) || other.username == username)&&(identical(other.matrixNumber, matrixNumber) || other.matrixNumber == matrixNumber)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt)&&const DeepCollectionEquality().equals(other._committedColors, _committedColors));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,username,matrixNumber,isSubmitted,createdAt,submittedAt,const DeepCollectionEquality().hash(_committedColors));

@override
String toString() {
  return 'User(phoneNumber: $phoneNumber, username: $username, matrixNumber: $matrixNumber, isSubmitted: $isSubmitted, createdAt: $createdAt, submittedAt: $submittedAt, committedColors: $committedColors)';
}


}

/// @nodoc
abstract mixin class _$UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$UserCopyWith(_User value, $Res Function(_User) _then) = __$UserCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, String username, int matrixNumber, bool isSubmitted, DateTime createdAt, DateTime? submittedAt, Map<String, int>? committedColors
});




}
/// @nodoc
class __$UserCopyWithImpl<$Res>
    implements _$UserCopyWith<$Res> {
  __$UserCopyWithImpl(this._self, this._then);

  final _User _self;
  final $Res Function(_User) _then;

/// Create a copy of User
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? username = null,Object? matrixNumber = null,Object? isSubmitted = null,Object? createdAt = null,Object? submittedAt = freezed,Object? committedColors = freezed,}) {
  return _then(_User(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,matrixNumber: null == matrixNumber ? _self.matrixNumber : matrixNumber // ignore: cast_nullable_to_non_nullable
as int,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as DateTime,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,committedColors: freezed == committedColors ? _self._committedColors : committedColors // ignore: cast_nullable_to_non_nullable
as Map<String, int>?,
  ));
}


}

// dart format on
