// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoginUsernameChanged value)?  usernameChanged,TResult Function( LoginPhoneNumberChanged value)?  phoneNumberChanged,TResult Function( LoginMatrixNumberChanged value)?  matrixNumberChanged,TResult Function( LoginSubmitted value)?  submitted,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoginUsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case LoginPhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case LoginMatrixNumberChanged() when matrixNumberChanged != null:
return matrixNumberChanged(_that);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoginUsernameChanged value)  usernameChanged,required TResult Function( LoginPhoneNumberChanged value)  phoneNumberChanged,required TResult Function( LoginMatrixNumberChanged value)  matrixNumberChanged,required TResult Function( LoginSubmitted value)  submitted,}){
final _that = this;
switch (_that) {
case LoginUsernameChanged():
return usernameChanged(_that);case LoginPhoneNumberChanged():
return phoneNumberChanged(_that);case LoginMatrixNumberChanged():
return matrixNumberChanged(_that);case LoginSubmitted():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoginUsernameChanged value)?  usernameChanged,TResult? Function( LoginPhoneNumberChanged value)?  phoneNumberChanged,TResult? Function( LoginMatrixNumberChanged value)?  matrixNumberChanged,TResult? Function( LoginSubmitted value)?  submitted,}){
final _that = this;
switch (_that) {
case LoginUsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case LoginPhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case LoginMatrixNumberChanged() when matrixNumberChanged != null:
return matrixNumberChanged(_that);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String value)?  usernameChanged,TResult Function( String value)?  phoneNumberChanged,TResult Function( String value)?  matrixNumberChanged,TResult Function()?  submitted,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoginUsernameChanged() when usernameChanged != null:
return usernameChanged(_that.value);case LoginPhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.value);case LoginMatrixNumberChanged() when matrixNumberChanged != null:
return matrixNumberChanged(_that.value);case LoginSubmitted() when submitted != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String value)  usernameChanged,required TResult Function( String value)  phoneNumberChanged,required TResult Function( String value)  matrixNumberChanged,required TResult Function()  submitted,}) {final _that = this;
switch (_that) {
case LoginUsernameChanged():
return usernameChanged(_that.value);case LoginPhoneNumberChanged():
return phoneNumberChanged(_that.value);case LoginMatrixNumberChanged():
return matrixNumberChanged(_that.value);case LoginSubmitted():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String value)?  usernameChanged,TResult? Function( String value)?  phoneNumberChanged,TResult? Function( String value)?  matrixNumberChanged,TResult? Function()?  submitted,}) {final _that = this;
switch (_that) {
case LoginUsernameChanged() when usernameChanged != null:
return usernameChanged(_that.value);case LoginPhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.value);case LoginMatrixNumberChanged() when matrixNumberChanged != null:
return matrixNumberChanged(_that.value);case LoginSubmitted() when submitted != null:
return submitted();case _:
  return null;

}
}

}

/// @nodoc


class LoginUsernameChanged implements LoginEvent {
  const LoginUsernameChanged(this.value);
  

 final  String value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginUsernameChangedCopyWith<LoginUsernameChanged> get copyWith => _$LoginUsernameChangedCopyWithImpl<LoginUsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginUsernameChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.usernameChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $LoginUsernameChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginUsernameChangedCopyWith(LoginUsernameChanged value, $Res Function(LoginUsernameChanged) _then) = _$LoginUsernameChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$LoginUsernameChangedCopyWithImpl<$Res>
    implements $LoginUsernameChangedCopyWith<$Res> {
  _$LoginUsernameChangedCopyWithImpl(this._self, this._then);

  final LoginUsernameChanged _self;
  final $Res Function(LoginUsernameChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(LoginUsernameChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginPhoneNumberChanged implements LoginEvent {
  const LoginPhoneNumberChanged(this.value);
  

 final  String value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginPhoneNumberChangedCopyWith<LoginPhoneNumberChanged> get copyWith => _$LoginPhoneNumberChangedCopyWithImpl<LoginPhoneNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginPhoneNumberChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.phoneNumberChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $LoginPhoneNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginPhoneNumberChangedCopyWith(LoginPhoneNumberChanged value, $Res Function(LoginPhoneNumberChanged) _then) = _$LoginPhoneNumberChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$LoginPhoneNumberChangedCopyWithImpl<$Res>
    implements $LoginPhoneNumberChangedCopyWith<$Res> {
  _$LoginPhoneNumberChangedCopyWithImpl(this._self, this._then);

  final LoginPhoneNumberChanged _self;
  final $Res Function(LoginPhoneNumberChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(LoginPhoneNumberChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginMatrixNumberChanged implements LoginEvent {
  const LoginMatrixNumberChanged(this.value);
  

 final  String value;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginMatrixNumberChangedCopyWith<LoginMatrixNumberChanged> get copyWith => _$LoginMatrixNumberChangedCopyWithImpl<LoginMatrixNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginMatrixNumberChanged&&(identical(other.value, value) || other.value == value));
}


@override
int get hashCode => Object.hash(runtimeType,value);

@override
String toString() {
  return 'LoginEvent.matrixNumberChanged(value: $value)';
}


}

/// @nodoc
abstract mixin class $LoginMatrixNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $LoginMatrixNumberChangedCopyWith(LoginMatrixNumberChanged value, $Res Function(LoginMatrixNumberChanged) _then) = _$LoginMatrixNumberChangedCopyWithImpl;
@useResult
$Res call({
 String value
});




}
/// @nodoc
class _$LoginMatrixNumberChangedCopyWithImpl<$Res>
    implements $LoginMatrixNumberChangedCopyWith<$Res> {
  _$LoginMatrixNumberChangedCopyWithImpl(this._self, this._then);

  final LoginMatrixNumberChanged _self;
  final $Res Function(LoginMatrixNumberChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? value = null,}) {
  return _then(LoginMatrixNumberChanged(
null == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class LoginSubmitted implements LoginEvent {
  const LoginSubmitted();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginSubmitted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.submitted()';
}


}




// dart format on
