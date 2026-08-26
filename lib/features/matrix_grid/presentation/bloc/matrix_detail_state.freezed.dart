// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matrix_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatrixDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixDetailState()';
}


}

/// @nodoc
class $MatrixDetailStateCopyWith<$Res>  {
$MatrixDetailStateCopyWith(MatrixDetailState _, $Res Function(MatrixDetailState) __);
}


/// Adds pattern-matching-related methods to [MatrixDetailState].
extension MatrixDetailStatePatterns on MatrixDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MatrixDetailInitial value)?  initial,TResult Function( MatrixDetailLoading value)?  loading,TResult Function( MatrixDetailLoaded value)?  loaded,TResult Function( MatrixDetailError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MatrixDetailInitial() when initial != null:
return initial(_that);case MatrixDetailLoading() when loading != null:
return loading(_that);case MatrixDetailLoaded() when loaded != null:
return loaded(_that);case MatrixDetailError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MatrixDetailInitial value)  initial,required TResult Function( MatrixDetailLoading value)  loading,required TResult Function( MatrixDetailLoaded value)  loaded,required TResult Function( MatrixDetailError value)  error,}){
final _that = this;
switch (_that) {
case MatrixDetailInitial():
return initial(_that);case MatrixDetailLoading():
return loading(_that);case MatrixDetailLoaded():
return loaded(_that);case MatrixDetailError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MatrixDetailInitial value)?  initial,TResult? Function( MatrixDetailLoading value)?  loading,TResult? Function( MatrixDetailLoaded value)?  loaded,TResult? Function( MatrixDetailError value)?  error,}){
final _that = this;
switch (_that) {
case MatrixDetailInitial() when initial != null:
return initial(_that);case MatrixDetailLoading() when loading != null:
return loading(_that);case MatrixDetailLoaded() when loaded != null:
return loaded(_that);case MatrixDetailError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String username,  int matrixNumber,  Map<String, int> committedColors,  DateTime? submittedAt)?  loaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MatrixDetailInitial() when initial != null:
return initial();case MatrixDetailLoading() when loading != null:
return loading();case MatrixDetailLoaded() when loaded != null:
return loaded(_that.username,_that.matrixNumber,_that.committedColors,_that.submittedAt);case MatrixDetailError() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String username,  int matrixNumber,  Map<String, int> committedColors,  DateTime? submittedAt)  loaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case MatrixDetailInitial():
return initial();case MatrixDetailLoading():
return loading();case MatrixDetailLoaded():
return loaded(_that.username,_that.matrixNumber,_that.committedColors,_that.submittedAt);case MatrixDetailError():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String username,  int matrixNumber,  Map<String, int> committedColors,  DateTime? submittedAt)?  loaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case MatrixDetailInitial() when initial != null:
return initial();case MatrixDetailLoading() when loading != null:
return loading();case MatrixDetailLoaded() when loaded != null:
return loaded(_that.username,_that.matrixNumber,_that.committedColors,_that.submittedAt);case MatrixDetailError() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class MatrixDetailInitial implements MatrixDetailState {
  const MatrixDetailInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixDetailState.initial()';
}


}




/// @nodoc


class MatrixDetailLoading implements MatrixDetailState {
  const MatrixDetailLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixDetailState.loading()';
}


}




/// @nodoc


class MatrixDetailLoaded implements MatrixDetailState {
  const MatrixDetailLoaded({required this.username, required this.matrixNumber, required final  Map<String, int> committedColors, this.submittedAt}): _committedColors = committedColors;
  

 final  String username;
 final  int matrixNumber;
 final  Map<String, int> _committedColors;
 Map<String, int> get committedColors {
  if (_committedColors is EqualUnmodifiableMapView) return _committedColors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_committedColors);
}

 final  DateTime? submittedAt;

/// Create a copy of MatrixDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixDetailLoadedCopyWith<MatrixDetailLoaded> get copyWith => _$MatrixDetailLoadedCopyWithImpl<MatrixDetailLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailLoaded&&(identical(other.username, username) || other.username == username)&&(identical(other.matrixNumber, matrixNumber) || other.matrixNumber == matrixNumber)&&const DeepCollectionEquality().equals(other._committedColors, _committedColors)&&(identical(other.submittedAt, submittedAt) || other.submittedAt == submittedAt));
}


@override
int get hashCode => Object.hash(runtimeType,username,matrixNumber,const DeepCollectionEquality().hash(_committedColors),submittedAt);

@override
String toString() {
  return 'MatrixDetailState.loaded(username: $username, matrixNumber: $matrixNumber, committedColors: $committedColors, submittedAt: $submittedAt)';
}


}

/// @nodoc
abstract mixin class $MatrixDetailLoadedCopyWith<$Res> implements $MatrixDetailStateCopyWith<$Res> {
  factory $MatrixDetailLoadedCopyWith(MatrixDetailLoaded value, $Res Function(MatrixDetailLoaded) _then) = _$MatrixDetailLoadedCopyWithImpl;
@useResult
$Res call({
 String username, int matrixNumber, Map<String, int> committedColors, DateTime? submittedAt
});




}
/// @nodoc
class _$MatrixDetailLoadedCopyWithImpl<$Res>
    implements $MatrixDetailLoadedCopyWith<$Res> {
  _$MatrixDetailLoadedCopyWithImpl(this._self, this._then);

  final MatrixDetailLoaded _self;
  final $Res Function(MatrixDetailLoaded) _then;

/// Create a copy of MatrixDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,Object? matrixNumber = null,Object? committedColors = null,Object? submittedAt = freezed,}) {
  return _then(MatrixDetailLoaded(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,matrixNumber: null == matrixNumber ? _self.matrixNumber : matrixNumber // ignore: cast_nullable_to_non_nullable
as int,committedColors: null == committedColors ? _self._committedColors : committedColors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,submittedAt: freezed == submittedAt ? _self.submittedAt : submittedAt // ignore: cast_nullable_to_non_nullable
as DateTime?,
  ));
}


}

/// @nodoc


class MatrixDetailError implements MatrixDetailState {
  const MatrixDetailError(this.message);
  

 final  String message;

/// Create a copy of MatrixDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixDetailErrorCopyWith<MatrixDetailError> get copyWith => _$MatrixDetailErrorCopyWithImpl<MatrixDetailError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatrixDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $MatrixDetailErrorCopyWith<$Res> implements $MatrixDetailStateCopyWith<$Res> {
  factory $MatrixDetailErrorCopyWith(MatrixDetailError value, $Res Function(MatrixDetailError) _then) = _$MatrixDetailErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MatrixDetailErrorCopyWithImpl<$Res>
    implements $MatrixDetailErrorCopyWith<$Res> {
  _$MatrixDetailErrorCopyWithImpl(this._self, this._then);

  final MatrixDetailError _self;
  final $Res Function(MatrixDetailError) _then;

/// Create a copy of MatrixDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MatrixDetailError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
