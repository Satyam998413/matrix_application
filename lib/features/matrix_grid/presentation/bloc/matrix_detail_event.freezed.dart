// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matrix_detail_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatrixDetailEvent {

 String get phoneNumber;
/// Create a copy of MatrixDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixDetailEventCopyWith<MatrixDetailEvent> get copyWith => _$MatrixDetailEventCopyWithImpl<MatrixDetailEvent>(this as MatrixDetailEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailEvent&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'MatrixDetailEvent(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $MatrixDetailEventCopyWith<$Res>  {
  factory $MatrixDetailEventCopyWith(MatrixDetailEvent value, $Res Function(MatrixDetailEvent) _then) = _$MatrixDetailEventCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$MatrixDetailEventCopyWithImpl<$Res>
    implements $MatrixDetailEventCopyWith<$Res> {
  _$MatrixDetailEventCopyWithImpl(this._self, this._then);

  final MatrixDetailEvent _self;
  final $Res Function(MatrixDetailEvent) _then;

/// Create a copy of MatrixDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MatrixDetailEvent].
extension MatrixDetailEventPatterns on MatrixDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MatrixDetailRequested value)?  requested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MatrixDetailRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MatrixDetailRequested value)  requested,}){
final _that = this;
switch (_that) {
case MatrixDetailRequested():
return requested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MatrixDetailRequested value)?  requested,}){
final _that = this;
switch (_that) {
case MatrixDetailRequested() when requested != null:
return requested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  requested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MatrixDetailRequested() when requested != null:
return requested(_that.phoneNumber);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  requested,}) {final _that = this;
switch (_that) {
case MatrixDetailRequested():
return requested(_that.phoneNumber);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  requested,}) {final _that = this;
switch (_that) {
case MatrixDetailRequested() when requested != null:
return requested(_that.phoneNumber);case _:
  return null;

}
}

}

/// @nodoc


class MatrixDetailRequested implements MatrixDetailEvent {
  const MatrixDetailRequested(this.phoneNumber);
  

@override final  String phoneNumber;

/// Create a copy of MatrixDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixDetailRequestedCopyWith<MatrixDetailRequested> get copyWith => _$MatrixDetailRequestedCopyWithImpl<MatrixDetailRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixDetailRequested&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'MatrixDetailEvent.requested(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $MatrixDetailRequestedCopyWith<$Res> implements $MatrixDetailEventCopyWith<$Res> {
  factory $MatrixDetailRequestedCopyWith(MatrixDetailRequested value, $Res Function(MatrixDetailRequested) _then) = _$MatrixDetailRequestedCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$MatrixDetailRequestedCopyWithImpl<$Res>
    implements $MatrixDetailRequestedCopyWith<$Res> {
  _$MatrixDetailRequestedCopyWithImpl(this._self, this._then);

  final MatrixDetailRequested _self;
  final $Res Function(MatrixDetailRequested) _then;

/// Create a copy of MatrixDetailEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(MatrixDetailRequested(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
