// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matrix_grid_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatrixGridEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixGridEvent()';
}


}

/// @nodoc
class $MatrixGridEventCopyWith<$Res>  {
$MatrixGridEventCopyWith(MatrixGridEvent _, $Res Function(MatrixGridEvent) __);
}


/// Adds pattern-matching-related methods to [MatrixGridEvent].
extension MatrixGridEventPatterns on MatrixGridEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MatrixGridStarted value)?  started,TResult Function( MatrixGridCellTapped value)?  cellTapped,TResult Function( MatrixGridSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MatrixGridStarted() when started != null:
return started(_that);case MatrixGridCellTapped() when cellTapped != null:
return cellTapped(_that);case MatrixGridSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MatrixGridStarted value)  started,required TResult Function( MatrixGridCellTapped value)  cellTapped,required TResult Function( MatrixGridSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case MatrixGridStarted():
return started(_that);case MatrixGridCellTapped():
return cellTapped(_that);case MatrixGridSubmitted():
return submitted(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MatrixGridStarted value)?  started,TResult? Function( MatrixGridCellTapped value)?  cellTapped,TResult? Function( MatrixGridSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case MatrixGridStarted() when started != null:
return started(_that);case MatrixGridCellTapped() when cellTapped != null:
return cellTapped(_that);case MatrixGridSubmitted() when submitted != null:
return submitted(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  started,TResult Function( int row,  int col)?  cellTapped,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MatrixGridStarted() when started != null:
return started(_that.phoneNumber);case MatrixGridCellTapped() when cellTapped != null:
return cellTapped(_that.row,_that.col);case MatrixGridSubmitted() when submitted != null:
return submitted();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  started,required TResult Function( int row,  int col)  cellTapped,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case MatrixGridStarted():
return started(_that.phoneNumber);case MatrixGridCellTapped():
return cellTapped(_that.row,_that.col);case MatrixGridSubmitted():
return submitted();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  started,TResult? Function( int row,  int col)?  cellTapped,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case MatrixGridStarted() when started != null:
return started(_that.phoneNumber);case MatrixGridCellTapped() when cellTapped != null:
return cellTapped(_that.row,_that.col);case MatrixGridSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class MatrixGridStarted implements MatrixGridEvent {
  const MatrixGridStarted(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of MatrixGridEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixGridStartedCopyWith<MatrixGridStarted> get copyWith => _$MatrixGridStartedCopyWithImpl<MatrixGridStarted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridStarted&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'MatrixGridEvent.started(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $MatrixGridStartedCopyWith<$Res> implements $MatrixGridEventCopyWith<$Res> {
  factory $MatrixGridStartedCopyWith(MatrixGridStarted value, $Res Function(MatrixGridStarted) _then) = _$MatrixGridStartedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$MatrixGridStartedCopyWithImpl<$Res>
    implements $MatrixGridStartedCopyWith<$Res> {
  _$MatrixGridStartedCopyWithImpl(this._self, this._then);

  final MatrixGridStarted _self;
  final $Res Function(MatrixGridStarted) _then;

/// Create a copy of MatrixGridEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(MatrixGridStarted(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MatrixGridCellTapped implements MatrixGridEvent {
  const MatrixGridCellTapped(this.row, this.col);
  

 final  int row;
 final  int col;

/// Create a copy of MatrixGridEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixGridCellTappedCopyWith<MatrixGridCellTapped> get copyWith => _$MatrixGridCellTappedCopyWithImpl<MatrixGridCellTapped>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridCellTapped&&(identical(other.row, row) || other.row == row)&&(identical(other.col, col) || other.col == col));
}


@override
int get hashCode => Object.hash(runtimeType,row,col);

@override
String toString() {
  return 'MatrixGridEvent.cellTapped(row: $row, col: $col)';
}


}

/// @nodoc
abstract mixin class $MatrixGridCellTappedCopyWith<$Res> implements $MatrixGridEventCopyWith<$Res> {
  factory $MatrixGridCellTappedCopyWith(MatrixGridCellTapped value, $Res Function(MatrixGridCellTapped) _then) = _$MatrixGridCellTappedCopyWithImpl;
@useResult
$Res call({
 int row, int col
});




}
/// @nodoc
class _$MatrixGridCellTappedCopyWithImpl<$Res>
    implements $MatrixGridCellTappedCopyWith<$Res> {
  _$MatrixGridCellTappedCopyWithImpl(this._self, this._then);

  final MatrixGridCellTapped _self;
  final $Res Function(MatrixGridCellTapped) _then;

/// Create a copy of MatrixGridEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? row = null,Object? col = null,}) {
  return _then(MatrixGridCellTapped(
null == row ? _self.row : row // ignore: cast_nullable_to_non_nullable
as int,null == col ? _self.col : col // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class MatrixGridSubmitted implements MatrixGridEvent {
  const MatrixGridSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixGridEvent.submitted()';
}


}




// dart format on
