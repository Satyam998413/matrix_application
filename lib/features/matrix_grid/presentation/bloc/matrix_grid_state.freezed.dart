// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'matrix_grid_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MatrixGridState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixGridState()';
}


}

/// @nodoc
class $MatrixGridStateCopyWith<$Res>  {
$MatrixGridStateCopyWith(MatrixGridState _, $Res Function(MatrixGridState) __);
}


/// Adds pattern-matching-related methods to [MatrixGridState].
extension MatrixGridStatePatterns on MatrixGridState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( MatrixGridInitial value)?  initial,TResult Function( MatrixGridLoading value)?  loading,TResult Function( MatrixGridLoadFailure value)?  loadFailure,TResult Function( MatrixGridReady value)?  ready,required TResult orElse(),}){
final _that = this;
switch (_that) {
case MatrixGridInitial() when initial != null:
return initial(_that);case MatrixGridLoading() when loading != null:
return loading(_that);case MatrixGridLoadFailure() when loadFailure != null:
return loadFailure(_that);case MatrixGridReady() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( MatrixGridInitial value)  initial,required TResult Function( MatrixGridLoading value)  loading,required TResult Function( MatrixGridLoadFailure value)  loadFailure,required TResult Function( MatrixGridReady value)  ready,}){
final _that = this;
switch (_that) {
case MatrixGridInitial():
return initial(_that);case MatrixGridLoading():
return loading(_that);case MatrixGridLoadFailure():
return loadFailure(_that);case MatrixGridReady():
return ready(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( MatrixGridInitial value)?  initial,TResult? Function( MatrixGridLoading value)?  loading,TResult? Function( MatrixGridLoadFailure value)?  loadFailure,TResult? Function( MatrixGridReady value)?  ready,}){
final _that = this;
switch (_that) {
case MatrixGridInitial() when initial != null:
return initial(_that);case MatrixGridLoading() when loading != null:
return loading(_that);case MatrixGridLoadFailure() when loadFailure != null:
return loadFailure(_that);case MatrixGridReady() when ready != null:
return ready(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( String message)?  loadFailure,TResult Function( String phoneNumber,  int matrixNumber,  Map<String, int> committedColors,  Map<String, int> currentSelectionLabels,  int selectionRows,  int selectionCols,  SubmitStatus submitStatus,  String? submitError)?  ready,required TResult orElse(),}) {final _that = this;
switch (_that) {
case MatrixGridInitial() when initial != null:
return initial();case MatrixGridLoading() when loading != null:
return loading();case MatrixGridLoadFailure() when loadFailure != null:
return loadFailure(_that.message);case MatrixGridReady() when ready != null:
return ready(_that.phoneNumber,_that.matrixNumber,_that.committedColors,_that.currentSelectionLabels,_that.selectionRows,_that.selectionCols,_that.submitStatus,_that.submitError);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( String message)  loadFailure,required TResult Function( String phoneNumber,  int matrixNumber,  Map<String, int> committedColors,  Map<String, int> currentSelectionLabels,  int selectionRows,  int selectionCols,  SubmitStatus submitStatus,  String? submitError)  ready,}) {final _that = this;
switch (_that) {
case MatrixGridInitial():
return initial();case MatrixGridLoading():
return loading();case MatrixGridLoadFailure():
return loadFailure(_that.message);case MatrixGridReady():
return ready(_that.phoneNumber,_that.matrixNumber,_that.committedColors,_that.currentSelectionLabels,_that.selectionRows,_that.selectionCols,_that.submitStatus,_that.submitError);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( String message)?  loadFailure,TResult? Function( String phoneNumber,  int matrixNumber,  Map<String, int> committedColors,  Map<String, int> currentSelectionLabels,  int selectionRows,  int selectionCols,  SubmitStatus submitStatus,  String? submitError)?  ready,}) {final _that = this;
switch (_that) {
case MatrixGridInitial() when initial != null:
return initial();case MatrixGridLoading() when loading != null:
return loading();case MatrixGridLoadFailure() when loadFailure != null:
return loadFailure(_that.message);case MatrixGridReady() when ready != null:
return ready(_that.phoneNumber,_that.matrixNumber,_that.committedColors,_that.currentSelectionLabels,_that.selectionRows,_that.selectionCols,_that.submitStatus,_that.submitError);case _:
  return null;

}
}

}

/// @nodoc


class MatrixGridInitial implements MatrixGridState {
  const MatrixGridInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixGridState.initial()';
}


}




/// @nodoc


class MatrixGridLoading implements MatrixGridState {
  const MatrixGridLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'MatrixGridState.loading()';
}


}




/// @nodoc


class MatrixGridLoadFailure implements MatrixGridState {
  const MatrixGridLoadFailure(this.message);
  

 final  String message;

/// Create a copy of MatrixGridState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixGridLoadFailureCopyWith<MatrixGridLoadFailure> get copyWith => _$MatrixGridLoadFailureCopyWithImpl<MatrixGridLoadFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridLoadFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'MatrixGridState.loadFailure(message: $message)';
}


}

/// @nodoc
abstract mixin class $MatrixGridLoadFailureCopyWith<$Res> implements $MatrixGridStateCopyWith<$Res> {
  factory $MatrixGridLoadFailureCopyWith(MatrixGridLoadFailure value, $Res Function(MatrixGridLoadFailure) _then) = _$MatrixGridLoadFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$MatrixGridLoadFailureCopyWithImpl<$Res>
    implements $MatrixGridLoadFailureCopyWith<$Res> {
  _$MatrixGridLoadFailureCopyWithImpl(this._self, this._then);

  final MatrixGridLoadFailure _self;
  final $Res Function(MatrixGridLoadFailure) _then;

/// Create a copy of MatrixGridState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(MatrixGridLoadFailure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class MatrixGridReady implements MatrixGridState {
  const MatrixGridReady({required this.phoneNumber, required this.matrixNumber, required final  Map<String, int> committedColors, required final  Map<String, int> currentSelectionLabels, required this.selectionRows, required this.selectionCols, this.submitStatus = SubmitStatus.idle, this.submitError}): _committedColors = committedColors,_currentSelectionLabels = currentSelectionLabels;
  

 final  String phoneNumber;
 final  int matrixNumber;
 final  Map<String, int> _committedColors;
 Map<String, int> get committedColors {
  if (_committedColors is EqualUnmodifiableMapView) return _committedColors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_committedColors);
}

 final  Map<String, int> _currentSelectionLabels;
 Map<String, int> get currentSelectionLabels {
  if (_currentSelectionLabels is EqualUnmodifiableMapView) return _currentSelectionLabels;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_currentSelectionLabels);
}

 final  int selectionRows;
 final  int selectionCols;
@JsonKey() final  SubmitStatus submitStatus;
 final  String? submitError;

/// Create a copy of MatrixGridState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MatrixGridReadyCopyWith<MatrixGridReady> get copyWith => _$MatrixGridReadyCopyWithImpl<MatrixGridReady>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MatrixGridReady&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.matrixNumber, matrixNumber) || other.matrixNumber == matrixNumber)&&const DeepCollectionEquality().equals(other._committedColors, _committedColors)&&const DeepCollectionEquality().equals(other._currentSelectionLabels, _currentSelectionLabels)&&(identical(other.selectionRows, selectionRows) || other.selectionRows == selectionRows)&&(identical(other.selectionCols, selectionCols) || other.selectionCols == selectionCols)&&(identical(other.submitStatus, submitStatus) || other.submitStatus == submitStatus)&&(identical(other.submitError, submitError) || other.submitError == submitError));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,matrixNumber,const DeepCollectionEquality().hash(_committedColors),const DeepCollectionEquality().hash(_currentSelectionLabels),selectionRows,selectionCols,submitStatus,submitError);

@override
String toString() {
  return 'MatrixGridState.ready(phoneNumber: $phoneNumber, matrixNumber: $matrixNumber, committedColors: $committedColors, currentSelectionLabels: $currentSelectionLabels, selectionRows: $selectionRows, selectionCols: $selectionCols, submitStatus: $submitStatus, submitError: $submitError)';
}


}

/// @nodoc
abstract mixin class $MatrixGridReadyCopyWith<$Res> implements $MatrixGridStateCopyWith<$Res> {
  factory $MatrixGridReadyCopyWith(MatrixGridReady value, $Res Function(MatrixGridReady) _then) = _$MatrixGridReadyCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, int matrixNumber, Map<String, int> committedColors, Map<String, int> currentSelectionLabels, int selectionRows, int selectionCols, SubmitStatus submitStatus, String? submitError
});




}
/// @nodoc
class _$MatrixGridReadyCopyWithImpl<$Res>
    implements $MatrixGridReadyCopyWith<$Res> {
  _$MatrixGridReadyCopyWithImpl(this._self, this._then);

  final MatrixGridReady _self;
  final $Res Function(MatrixGridReady) _then;

/// Create a copy of MatrixGridState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? matrixNumber = null,Object? committedColors = null,Object? currentSelectionLabels = null,Object? selectionRows = null,Object? selectionCols = null,Object? submitStatus = null,Object? submitError = freezed,}) {
  return _then(MatrixGridReady(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,matrixNumber: null == matrixNumber ? _self.matrixNumber : matrixNumber // ignore: cast_nullable_to_non_nullable
as int,committedColors: null == committedColors ? _self._committedColors : committedColors // ignore: cast_nullable_to_non_nullable
as Map<String, int>,currentSelectionLabels: null == currentSelectionLabels ? _self._currentSelectionLabels : currentSelectionLabels // ignore: cast_nullable_to_non_nullable
as Map<String, int>,selectionRows: null == selectionRows ? _self.selectionRows : selectionRows // ignore: cast_nullable_to_non_nullable
as int,selectionCols: null == selectionCols ? _self.selectionCols : selectionCols // ignore: cast_nullable_to_non_nullable
as int,submitStatus: null == submitStatus ? _self.submitStatus : submitStatus // ignore: cast_nullable_to_non_nullable
as SubmitStatus,submitError: freezed == submitError ? _self.submitError : submitError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
