// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginFormData {

 String get username; String get phoneNumber; String get matrixNumberText; bool get isMatrixNumberLocked; String? get usernameError; String? get phoneNumberError; String? get matrixNumberError; String? get infoMessage;
/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<LoginFormData> get copyWith => _$LoginFormDataCopyWithImpl<LoginFormData>(this as LoginFormData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginFormData&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.matrixNumberText, matrixNumberText) || other.matrixNumberText == matrixNumberText)&&(identical(other.isMatrixNumberLocked, isMatrixNumberLocked) || other.isMatrixNumberLocked == isMatrixNumberLocked)&&(identical(other.usernameError, usernameError) || other.usernameError == usernameError)&&(identical(other.phoneNumberError, phoneNumberError) || other.phoneNumberError == phoneNumberError)&&(identical(other.matrixNumberError, matrixNumberError) || other.matrixNumberError == matrixNumberError)&&(identical(other.infoMessage, infoMessage) || other.infoMessage == infoMessage));
}


@override
int get hashCode => Object.hash(runtimeType,username,phoneNumber,matrixNumberText,isMatrixNumberLocked,usernameError,phoneNumberError,matrixNumberError,infoMessage);

@override
String toString() {
  return 'LoginFormData(username: $username, phoneNumber: $phoneNumber, matrixNumberText: $matrixNumberText, isMatrixNumberLocked: $isMatrixNumberLocked, usernameError: $usernameError, phoneNumberError: $phoneNumberError, matrixNumberError: $matrixNumberError, infoMessage: $infoMessage)';
}


}

/// @nodoc
abstract mixin class $LoginFormDataCopyWith<$Res>  {
  factory $LoginFormDataCopyWith(LoginFormData value, $Res Function(LoginFormData) _then) = _$LoginFormDataCopyWithImpl;
@useResult
$Res call({
 String username, String phoneNumber, String matrixNumberText, bool isMatrixNumberLocked, String? usernameError, String? phoneNumberError, String? matrixNumberError, String? infoMessage
});




}
/// @nodoc
class _$LoginFormDataCopyWithImpl<$Res>
    implements $LoginFormDataCopyWith<$Res> {
  _$LoginFormDataCopyWithImpl(this._self, this._then);

  final LoginFormData _self;
  final $Res Function(LoginFormData) _then;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? username = null,Object? phoneNumber = null,Object? matrixNumberText = null,Object? isMatrixNumberLocked = null,Object? usernameError = freezed,Object? phoneNumberError = freezed,Object? matrixNumberError = freezed,Object? infoMessage = freezed,}) {
  return _then(_self.copyWith(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,matrixNumberText: null == matrixNumberText ? _self.matrixNumberText : matrixNumberText // ignore: cast_nullable_to_non_nullable
as String,isMatrixNumberLocked: null == isMatrixNumberLocked ? _self.isMatrixNumberLocked : isMatrixNumberLocked // ignore: cast_nullable_to_non_nullable
as bool,usernameError: freezed == usernameError ? _self.usernameError : usernameError // ignore: cast_nullable_to_non_nullable
as String?,phoneNumberError: freezed == phoneNumberError ? _self.phoneNumberError : phoneNumberError // ignore: cast_nullable_to_non_nullable
as String?,matrixNumberError: freezed == matrixNumberError ? _self.matrixNumberError : matrixNumberError // ignore: cast_nullable_to_non_nullable
as String?,infoMessage: freezed == infoMessage ? _self.infoMessage : infoMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginFormData].
extension LoginFormDataPatterns on LoginFormData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginFormData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginFormData value)  $default,){
final _that = this;
switch (_that) {
case _LoginFormData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginFormData value)?  $default,){
final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String username,  String phoneNumber,  String matrixNumberText,  bool isMatrixNumberLocked,  String? usernameError,  String? phoneNumberError,  String? matrixNumberError,  String? infoMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that.username,_that.phoneNumber,_that.matrixNumberText,_that.isMatrixNumberLocked,_that.usernameError,_that.phoneNumberError,_that.matrixNumberError,_that.infoMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String username,  String phoneNumber,  String matrixNumberText,  bool isMatrixNumberLocked,  String? usernameError,  String? phoneNumberError,  String? matrixNumberError,  String? infoMessage)  $default,) {final _that = this;
switch (_that) {
case _LoginFormData():
return $default(_that.username,_that.phoneNumber,_that.matrixNumberText,_that.isMatrixNumberLocked,_that.usernameError,_that.phoneNumberError,_that.matrixNumberError,_that.infoMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String username,  String phoneNumber,  String matrixNumberText,  bool isMatrixNumberLocked,  String? usernameError,  String? phoneNumberError,  String? matrixNumberError,  String? infoMessage)?  $default,) {final _that = this;
switch (_that) {
case _LoginFormData() when $default != null:
return $default(_that.username,_that.phoneNumber,_that.matrixNumberText,_that.isMatrixNumberLocked,_that.usernameError,_that.phoneNumberError,_that.matrixNumberError,_that.infoMessage);case _:
  return null;

}
}

}

/// @nodoc


class _LoginFormData implements LoginFormData {
  const _LoginFormData({this.username = '', this.phoneNumber = '', this.matrixNumberText = '', this.isMatrixNumberLocked = false, this.usernameError, this.phoneNumberError, this.matrixNumberError, this.infoMessage});
  

@override@JsonKey() final  String username;
@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  String matrixNumberText;
@override@JsonKey() final  bool isMatrixNumberLocked;
@override final  String? usernameError;
@override final  String? phoneNumberError;
@override final  String? matrixNumberError;
@override final  String? infoMessage;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginFormDataCopyWith<_LoginFormData> get copyWith => __$LoginFormDataCopyWithImpl<_LoginFormData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginFormData&&(identical(other.username, username) || other.username == username)&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.matrixNumberText, matrixNumberText) || other.matrixNumberText == matrixNumberText)&&(identical(other.isMatrixNumberLocked, isMatrixNumberLocked) || other.isMatrixNumberLocked == isMatrixNumberLocked)&&(identical(other.usernameError, usernameError) || other.usernameError == usernameError)&&(identical(other.phoneNumberError, phoneNumberError) || other.phoneNumberError == phoneNumberError)&&(identical(other.matrixNumberError, matrixNumberError) || other.matrixNumberError == matrixNumberError)&&(identical(other.infoMessage, infoMessage) || other.infoMessage == infoMessage));
}


@override
int get hashCode => Object.hash(runtimeType,username,phoneNumber,matrixNumberText,isMatrixNumberLocked,usernameError,phoneNumberError,matrixNumberError,infoMessage);

@override
String toString() {
  return 'LoginFormData(username: $username, phoneNumber: $phoneNumber, matrixNumberText: $matrixNumberText, isMatrixNumberLocked: $isMatrixNumberLocked, usernameError: $usernameError, phoneNumberError: $phoneNumberError, matrixNumberError: $matrixNumberError, infoMessage: $infoMessage)';
}


}

/// @nodoc
abstract mixin class _$LoginFormDataCopyWith<$Res> implements $LoginFormDataCopyWith<$Res> {
  factory _$LoginFormDataCopyWith(_LoginFormData value, $Res Function(_LoginFormData) _then) = __$LoginFormDataCopyWithImpl;
@override @useResult
$Res call({
 String username, String phoneNumber, String matrixNumberText, bool isMatrixNumberLocked, String? usernameError, String? phoneNumberError, String? matrixNumberError, String? infoMessage
});




}
/// @nodoc
class __$LoginFormDataCopyWithImpl<$Res>
    implements _$LoginFormDataCopyWith<$Res> {
  __$LoginFormDataCopyWithImpl(this._self, this._then);

  final _LoginFormData _self;
  final $Res Function(_LoginFormData) _then;

/// Create a copy of LoginFormData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? username = null,Object? phoneNumber = null,Object? matrixNumberText = null,Object? isMatrixNumberLocked = null,Object? usernameError = freezed,Object? phoneNumberError = freezed,Object? matrixNumberError = freezed,Object? infoMessage = freezed,}) {
  return _then(_LoginFormData(
username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,matrixNumberText: null == matrixNumberText ? _self.matrixNumberText : matrixNumberText // ignore: cast_nullable_to_non_nullable
as String,isMatrixNumberLocked: null == isMatrixNumberLocked ? _self.isMatrixNumberLocked : isMatrixNumberLocked // ignore: cast_nullable_to_non_nullable
as bool,usernameError: freezed == usernameError ? _self.usernameError : usernameError // ignore: cast_nullable_to_non_nullable
as String?,phoneNumberError: freezed == phoneNumberError ? _self.phoneNumberError : phoneNumberError // ignore: cast_nullable_to_non_nullable
as String?,matrixNumberError: freezed == matrixNumberError ? _self.matrixNumberError : matrixNumberError // ignore: cast_nullable_to_non_nullable
as String?,infoMessage: freezed == infoMessage ? _self.infoMessage : infoMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$LoginState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginState()';
}


}

/// @nodoc
class $LoginStateCopyWith<$Res>  {
$LoginStateCopyWith(LoginState _, $Res Function(LoginState) __);
}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginEditing value)?  editing,TResult Function( LoginSubmitting value)?  submitting,TResult Function( LoginNavigateHome value)?  navigateHome,TResult Function( LoginNavigateAlreadySubmitted value)?  navigateAlreadySubmitted,TResult Function( LoginSubmitFailure value)?  submitFailure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that);case LoginSubmitting() when submitting != null:
return submitting(_that);case LoginNavigateHome() when navigateHome != null:
return navigateHome(_that);case LoginNavigateAlreadySubmitted() when navigateAlreadySubmitted != null:
return navigateAlreadySubmitted(_that);case LoginSubmitFailure() when submitFailure != null:
return submitFailure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginEditing value)  editing,required TResult Function( LoginSubmitting value)  submitting,required TResult Function( LoginNavigateHome value)  navigateHome,required TResult Function( LoginNavigateAlreadySubmitted value)  navigateAlreadySubmitted,required TResult Function( LoginSubmitFailure value)  submitFailure,}){
final _that = this;
switch (_that) {
case LoginEditing():
return editing(_that);case LoginSubmitting():
return submitting(_that);case LoginNavigateHome():
return navigateHome(_that);case LoginNavigateAlreadySubmitted():
return navigateAlreadySubmitted(_that);case LoginSubmitFailure():
return submitFailure(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginEditing value)?  editing,TResult? Function( LoginSubmitting value)?  submitting,TResult? Function( LoginNavigateHome value)?  navigateHome,TResult? Function( LoginNavigateAlreadySubmitted value)?  navigateAlreadySubmitted,TResult? Function( LoginSubmitFailure value)?  submitFailure,}){
final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that);case LoginSubmitting() when submitting != null:
return submitting(_that);case LoginNavigateHome() when navigateHome != null:
return navigateHome(_that);case LoginNavigateAlreadySubmitted() when navigateAlreadySubmitted != null:
return navigateAlreadySubmitted(_that);case LoginSubmitFailure() when submitFailure != null:
return submitFailure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( LoginFormData form)?  editing,TResult Function( LoginFormData form)?  submitting,TResult Function( String phoneNumber,  int matrixNumber)?  navigateHome,TResult Function( User user)?  navigateAlreadySubmitted,TResult Function( LoginFormData form,  String message)?  submitFailure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that.form);case LoginSubmitting() when submitting != null:
return submitting(_that.form);case LoginNavigateHome() when navigateHome != null:
return navigateHome(_that.phoneNumber,_that.matrixNumber);case LoginNavigateAlreadySubmitted() when navigateAlreadySubmitted != null:
return navigateAlreadySubmitted(_that.user);case LoginSubmitFailure() when submitFailure != null:
return submitFailure(_that.form,_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( LoginFormData form)  editing,required TResult Function( LoginFormData form)  submitting,required TResult Function( String phoneNumber,  int matrixNumber)  navigateHome,required TResult Function( User user)  navigateAlreadySubmitted,required TResult Function( LoginFormData form,  String message)  submitFailure,}) {final _that = this;
switch (_that) {
case LoginEditing():
return editing(_that.form);case LoginSubmitting():
return submitting(_that.form);case LoginNavigateHome():
return navigateHome(_that.phoneNumber,_that.matrixNumber);case LoginNavigateAlreadySubmitted():
return navigateAlreadySubmitted(_that.user);case LoginSubmitFailure():
return submitFailure(_that.form,_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( LoginFormData form)?  editing,TResult? Function( LoginFormData form)?  submitting,TResult? Function( String phoneNumber,  int matrixNumber)?  navigateHome,TResult? Function( User user)?  navigateAlreadySubmitted,TResult? Function( LoginFormData form,  String message)?  submitFailure,}) {final _that = this;
switch (_that) {
case LoginEditing() when editing != null:
return editing(_that.form);case LoginSubmitting() when submitting != null:
return submitting(_that.form);case LoginNavigateHome() when navigateHome != null:
return navigateHome(_that.phoneNumber,_that.matrixNumber);case LoginNavigateAlreadySubmitted() when navigateAlreadySubmitted != null:
return navigateAlreadySubmitted(_that.user);case LoginSubmitFailure() when submitFailure != null:
return submitFailure(_that.form,_that.message);case _:
  return null;

}
}

}

/// @nodoc


class LoginEditing implements LoginState {
  const LoginEditing(this.form);
  

 final  LoginFormData form;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginEditingCopyWith<LoginEditing> get copyWith => _$LoginEditingCopyWithImpl<LoginEditing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEditing&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'LoginState.editing(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoginEditingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginEditingCopyWith(LoginEditing value, $Res Function(LoginEditing) _then) = _$LoginEditingCopyWithImpl;
@useResult
$Res call({
 LoginFormData form
});


$LoginFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$LoginEditingCopyWithImpl<$Res>
    implements $LoginEditingCopyWith<$Res> {
  _$LoginEditingCopyWithImpl(this._self, this._then);

  final LoginEditing _self;
  final $Res Function(LoginEditing) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(LoginEditing(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormData,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<$Res> get form {
  
  return $LoginFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class LoginSubmitting implements LoginState {
  const LoginSubmitting(this.form);
  

 final  LoginFormData form;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSubmittingCopyWith<LoginSubmitting> get copyWith => _$LoginSubmittingCopyWithImpl<LoginSubmitting>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitting&&(identical(other.form, form) || other.form == form));
}


@override
int get hashCode => Object.hash(runtimeType,form);

@override
String toString() {
  return 'LoginState.submitting(form: $form)';
}


}

/// @nodoc
abstract mixin class $LoginSubmittingCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSubmittingCopyWith(LoginSubmitting value, $Res Function(LoginSubmitting) _then) = _$LoginSubmittingCopyWithImpl;
@useResult
$Res call({
 LoginFormData form
});


$LoginFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$LoginSubmittingCopyWithImpl<$Res>
    implements $LoginSubmittingCopyWith<$Res> {
  _$LoginSubmittingCopyWithImpl(this._self, this._then);

  final LoginSubmitting _self;
  final $Res Function(LoginSubmitting) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,}) {
  return _then(LoginSubmitting(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormData,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<$Res> get form {
  
  return $LoginFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

/// @nodoc


class LoginNavigateHome implements LoginState {
  const LoginNavigateHome(this.phoneNumber, this.matrixNumber);
  

 final  String phoneNumber;
 final  int matrixNumber;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginNavigateHomeCopyWith<LoginNavigateHome> get copyWith => _$LoginNavigateHomeCopyWithImpl<LoginNavigateHome>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginNavigateHome&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.matrixNumber, matrixNumber) || other.matrixNumber == matrixNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber,matrixNumber);

@override
String toString() {
  return 'LoginState.navigateHome(phoneNumber: $phoneNumber, matrixNumber: $matrixNumber)';
}


}

/// @nodoc
abstract mixin class $LoginNavigateHomeCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginNavigateHomeCopyWith(LoginNavigateHome value, $Res Function(LoginNavigateHome) _then) = _$LoginNavigateHomeCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, int matrixNumber
});




}
/// @nodoc
class _$LoginNavigateHomeCopyWithImpl<$Res>
    implements $LoginNavigateHomeCopyWith<$Res> {
  _$LoginNavigateHomeCopyWithImpl(this._self, this._then);

  final LoginNavigateHome _self;
  final $Res Function(LoginNavigateHome) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? matrixNumber = null,}) {
  return _then(LoginNavigateHome(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,null == matrixNumber ? _self.matrixNumber : matrixNumber // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class LoginNavigateAlreadySubmitted implements LoginState {
  const LoginNavigateAlreadySubmitted(this.user);
  

 final  User user;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginNavigateAlreadySubmittedCopyWith<LoginNavigateAlreadySubmitted> get copyWith => _$LoginNavigateAlreadySubmittedCopyWithImpl<LoginNavigateAlreadySubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginNavigateAlreadySubmitted&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'LoginState.navigateAlreadySubmitted(user: $user)';
}


}

/// @nodoc
abstract mixin class $LoginNavigateAlreadySubmittedCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginNavigateAlreadySubmittedCopyWith(LoginNavigateAlreadySubmitted value, $Res Function(LoginNavigateAlreadySubmitted) _then) = _$LoginNavigateAlreadySubmittedCopyWithImpl;
@useResult
$Res call({
 User user
});


$UserCopyWith<$Res> get user;

}
/// @nodoc
class _$LoginNavigateAlreadySubmittedCopyWithImpl<$Res>
    implements $LoginNavigateAlreadySubmittedCopyWith<$Res> {
  _$LoginNavigateAlreadySubmittedCopyWithImpl(this._self, this._then);

  final LoginNavigateAlreadySubmitted _self;
  final $Res Function(LoginNavigateAlreadySubmitted) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(LoginNavigateAlreadySubmitted(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as User,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserCopyWith<$Res> get user {
  
  return $UserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc


class LoginSubmitFailure implements LoginState {
  const LoginSubmitFailure(this.form, this.message);
  

 final  LoginFormData form;
 final  String message;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginSubmitFailureCopyWith<LoginSubmitFailure> get copyWith => _$LoginSubmitFailureCopyWithImpl<LoginSubmitFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitFailure&&(identical(other.form, form) || other.form == form)&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,form,message);

@override
String toString() {
  return 'LoginState.submitFailure(form: $form, message: $message)';
}


}

/// @nodoc
abstract mixin class $LoginSubmitFailureCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory $LoginSubmitFailureCopyWith(LoginSubmitFailure value, $Res Function(LoginSubmitFailure) _then) = _$LoginSubmitFailureCopyWithImpl;
@useResult
$Res call({
 LoginFormData form, String message
});


$LoginFormDataCopyWith<$Res> get form;

}
/// @nodoc
class _$LoginSubmitFailureCopyWithImpl<$Res>
    implements $LoginSubmitFailureCopyWith<$Res> {
  _$LoginSubmitFailureCopyWithImpl(this._self, this._then);

  final LoginSubmitFailure _self;
  final $Res Function(LoginSubmitFailure) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? form = null,Object? message = null,}) {
  return _then(LoginSubmitFailure(
null == form ? _self.form : form // ignore: cast_nullable_to_non_nullable
as LoginFormData,null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LoginFormDataCopyWith<$Res> get form {
  
  return $LoginFormDataCopyWith<$Res>(_self.form, (value) {
    return _then(_self.copyWith(form: value));
  });
}
}

// dart format on
