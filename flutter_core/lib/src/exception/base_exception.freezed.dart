// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
BaseException _$BaseExceptionFromJson(
  Map<String, dynamic> json
) {
        switch (json['runtimeType']) {
                  case 'default':
          return _BaseDefaultException.fromJson(
            json
          );
                case 'serverException':
          return ServerException.fromJson(
            json
          );
                case 'noInternetException':
          return NoInternetException.fromJson(
            json
          );
                case 'forceLogoutException':
          return ForceLogoutException.fromJson(
            json
          );
                case 'forceUpgradeApplication':
          return ForceUpgradeApplication.fromJson(
            json
          );
        
          default:
            throw CheckedFromJsonException(
  json,
  'runtimeType',
  'BaseException',
  'Invalid union type "${json['runtimeType']}"!'
);
        }
      
}

/// @nodoc
mixin _$BaseException {

 String get message;
/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BaseExceptionCopyWith<BaseException> get copyWith => _$BaseExceptionCopyWithImpl<BaseException>(this as BaseException, _$identity);

  /// Serializes this BaseException to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BaseException&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseException(message: $message)';
}


}

/// @nodoc
abstract mixin class $BaseExceptionCopyWith<$Res>  {
  factory $BaseExceptionCopyWith(BaseException value, $Res Function(BaseException) _then) = _$BaseExceptionCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$BaseExceptionCopyWithImpl<$Res>
    implements $BaseExceptionCopyWith<$Res> {
  _$BaseExceptionCopyWithImpl(this._self, this._then);

  final BaseException _self;
  final $Res Function(BaseException) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? message = null,}) {
  return _then(_self.copyWith(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [BaseException].
extension BaseExceptionPatterns on BaseException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BaseDefaultException value)?  $default,{TResult Function( ServerException value)?  serverException,TResult Function( NoInternetException value)?  noInternetException,TResult Function( ForceLogoutException value)?  forceLogoutException,TResult Function( ForceUpgradeApplication value)?  forceUpgradeApplication,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BaseDefaultException() when $default != null:
return $default(_that);case ServerException() when serverException != null:
return serverException(_that);case NoInternetException() when noInternetException != null:
return noInternetException(_that);case ForceLogoutException() when forceLogoutException != null:
return forceLogoutException(_that);case ForceUpgradeApplication() when forceUpgradeApplication != null:
return forceUpgradeApplication(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BaseDefaultException value)  $default,{required TResult Function( ServerException value)  serverException,required TResult Function( NoInternetException value)  noInternetException,required TResult Function( ForceLogoutException value)  forceLogoutException,required TResult Function( ForceUpgradeApplication value)  forceUpgradeApplication,}){
final _that = this;
switch (_that) {
case _BaseDefaultException():
return $default(_that);case ServerException():
return serverException(_that);case NoInternetException():
return noInternetException(_that);case ForceLogoutException():
return forceLogoutException(_that);case ForceUpgradeApplication():
return forceUpgradeApplication(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BaseDefaultException value)?  $default,{TResult? Function( ServerException value)?  serverException,TResult? Function( NoInternetException value)?  noInternetException,TResult? Function( ForceLogoutException value)?  forceLogoutException,TResult? Function( ForceUpgradeApplication value)?  forceUpgradeApplication,}){
final _that = this;
switch (_that) {
case _BaseDefaultException() when $default != null:
return $default(_that);case ServerException() when serverException != null:
return serverException(_that);case NoInternetException() when noInternetException != null:
return noInternetException(_that);case ForceLogoutException() when forceLogoutException != null:
return forceLogoutException(_that);case ForceUpgradeApplication() when forceUpgradeApplication != null:
return forceUpgradeApplication(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String message)?  $default,{TResult Function( String message,  int statusCode,  String errorCode,  String errorType)?  serverException,TResult Function( String message)?  noInternetException,TResult Function( String message)?  forceLogoutException,TResult Function( String message)?  forceUpgradeApplication,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BaseDefaultException() when $default != null:
return $default(_that.message);case ServerException() when serverException != null:
return serverException(_that.message,_that.statusCode,_that.errorCode,_that.errorType);case NoInternetException() when noInternetException != null:
return noInternetException(_that.message);case ForceLogoutException() when forceLogoutException != null:
return forceLogoutException(_that.message);case ForceUpgradeApplication() when forceUpgradeApplication != null:
return forceUpgradeApplication(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String message)  $default,{required TResult Function( String message,  int statusCode,  String errorCode,  String errorType)  serverException,required TResult Function( String message)  noInternetException,required TResult Function( String message)  forceLogoutException,required TResult Function( String message)  forceUpgradeApplication,}) {final _that = this;
switch (_that) {
case _BaseDefaultException():
return $default(_that.message);case ServerException():
return serverException(_that.message,_that.statusCode,_that.errorCode,_that.errorType);case NoInternetException():
return noInternetException(_that.message);case ForceLogoutException():
return forceLogoutException(_that.message);case ForceUpgradeApplication():
return forceUpgradeApplication(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String message)?  $default,{TResult? Function( String message,  int statusCode,  String errorCode,  String errorType)?  serverException,TResult? Function( String message)?  noInternetException,TResult? Function( String message)?  forceLogoutException,TResult? Function( String message)?  forceUpgradeApplication,}) {final _that = this;
switch (_that) {
case _BaseDefaultException() when $default != null:
return $default(_that.message);case ServerException() when serverException != null:
return serverException(_that.message,_that.statusCode,_that.errorCode,_that.errorType);case NoInternetException() when noInternetException != null:
return noInternetException(_that.message);case ForceLogoutException() when forceLogoutException != null:
return forceLogoutException(_that.message);case ForceUpgradeApplication() when forceUpgradeApplication != null:
return forceUpgradeApplication(_that.message);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BaseDefaultException extends BaseException {
  const _BaseDefaultException({this.message = '', final  String? $type}): $type = $type ?? 'default',super._();
  factory _BaseDefaultException.fromJson(Map<String, dynamic> json) => _$BaseDefaultExceptionFromJson(json);

@override@JsonKey() final  String message;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BaseDefaultExceptionCopyWith<_BaseDefaultException> get copyWith => __$BaseDefaultExceptionCopyWithImpl<_BaseDefaultException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BaseDefaultExceptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BaseDefaultException&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseException(message: $message)';
}


}

/// @nodoc
abstract mixin class _$BaseDefaultExceptionCopyWith<$Res> implements $BaseExceptionCopyWith<$Res> {
  factory _$BaseDefaultExceptionCopyWith(_BaseDefaultException value, $Res Function(_BaseDefaultException) _then) = __$BaseDefaultExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class __$BaseDefaultExceptionCopyWithImpl<$Res>
    implements _$BaseDefaultExceptionCopyWith<$Res> {
  __$BaseDefaultExceptionCopyWithImpl(this._self, this._then);

  final _BaseDefaultException _self;
  final $Res Function(_BaseDefaultException) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_BaseDefaultException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ServerException extends BaseException {
  const ServerException({this.message = '', this.statusCode = -1, this.errorCode = '', this.errorType = '', final  String? $type}): $type = $type ?? 'serverException',super._();
  factory ServerException.fromJson(Map<String, dynamic> json) => _$ServerExceptionFromJson(json);

@override@JsonKey() final  String message;
@JsonKey() final  int statusCode;
@JsonKey() final  String errorCode;
@JsonKey() final  String errorType;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ServerExceptionCopyWith<ServerException> get copyWith => _$ServerExceptionCopyWithImpl<ServerException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ServerExceptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ServerException&&(identical(other.message, message) || other.message == message)&&(identical(other.statusCode, statusCode) || other.statusCode == statusCode)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorType, errorType) || other.errorType == errorType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message,statusCode,errorCode,errorType);

@override
String toString() {
  return 'BaseException.serverException(message: $message, statusCode: $statusCode, errorCode: $errorCode, errorType: $errorType)';
}


}

/// @nodoc
abstract mixin class $ServerExceptionCopyWith<$Res> implements $BaseExceptionCopyWith<$Res> {
  factory $ServerExceptionCopyWith(ServerException value, $Res Function(ServerException) _then) = _$ServerExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message, int statusCode, String errorCode, String errorType
});




}
/// @nodoc
class _$ServerExceptionCopyWithImpl<$Res>
    implements $ServerExceptionCopyWith<$Res> {
  _$ServerExceptionCopyWithImpl(this._self, this._then);

  final ServerException _self;
  final $Res Function(ServerException) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,Object? statusCode = null,Object? errorCode = null,Object? errorType = null,}) {
  return _then(ServerException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,statusCode: null == statusCode ? _self.statusCode : statusCode // ignore: cast_nullable_to_non_nullable
as int,errorCode: null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String,errorType: null == errorType ? _self.errorType : errorType // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class NoInternetException extends BaseException {
  const NoInternetException({this.message = '', final  String? $type}): $type = $type ?? 'noInternetException',super._();
  factory NoInternetException.fromJson(Map<String, dynamic> json) => _$NoInternetExceptionFromJson(json);

@override@JsonKey() final  String message;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$NoInternetExceptionCopyWith<NoInternetException> get copyWith => _$NoInternetExceptionCopyWithImpl<NoInternetException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$NoInternetExceptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NoInternetException&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseException.noInternetException(message: $message)';
}


}

/// @nodoc
abstract mixin class $NoInternetExceptionCopyWith<$Res> implements $BaseExceptionCopyWith<$Res> {
  factory $NoInternetExceptionCopyWith(NoInternetException value, $Res Function(NoInternetException) _then) = _$NoInternetExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$NoInternetExceptionCopyWithImpl<$Res>
    implements $NoInternetExceptionCopyWith<$Res> {
  _$NoInternetExceptionCopyWithImpl(this._self, this._then);

  final NoInternetException _self;
  final $Res Function(NoInternetException) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(NoInternetException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ForceLogoutException extends BaseException {
  const ForceLogoutException({this.message = '', final  String? $type}): $type = $type ?? 'forceLogoutException',super._();
  factory ForceLogoutException.fromJson(Map<String, dynamic> json) => _$ForceLogoutExceptionFromJson(json);

@override@JsonKey() final  String message;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceLogoutExceptionCopyWith<ForceLogoutException> get copyWith => _$ForceLogoutExceptionCopyWithImpl<ForceLogoutException>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForceLogoutExceptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceLogoutException&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseException.forceLogoutException(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForceLogoutExceptionCopyWith<$Res> implements $BaseExceptionCopyWith<$Res> {
  factory $ForceLogoutExceptionCopyWith(ForceLogoutException value, $Res Function(ForceLogoutException) _then) = _$ForceLogoutExceptionCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ForceLogoutExceptionCopyWithImpl<$Res>
    implements $ForceLogoutExceptionCopyWith<$Res> {
  _$ForceLogoutExceptionCopyWithImpl(this._self, this._then);

  final ForceLogoutException _self;
  final $Res Function(ForceLogoutException) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ForceLogoutException(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
@JsonSerializable()

class ForceUpgradeApplication extends BaseException {
  const ForceUpgradeApplication({this.message = '', final  String? $type}): $type = $type ?? 'forceUpgradeApplication',super._();
  factory ForceUpgradeApplication.fromJson(Map<String, dynamic> json) => _$ForceUpgradeApplicationFromJson(json);

@override@JsonKey() final  String message;

@JsonKey(name: 'runtimeType')
final String $type;


/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ForceUpgradeApplicationCopyWith<ForceUpgradeApplication> get copyWith => _$ForceUpgradeApplicationCopyWithImpl<ForceUpgradeApplication>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ForceUpgradeApplicationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ForceUpgradeApplication&&(identical(other.message, message) || other.message == message));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'BaseException.forceUpgradeApplication(message: $message)';
}


}

/// @nodoc
abstract mixin class $ForceUpgradeApplicationCopyWith<$Res> implements $BaseExceptionCopyWith<$Res> {
  factory $ForceUpgradeApplicationCopyWith(ForceUpgradeApplication value, $Res Function(ForceUpgradeApplication) _then) = _$ForceUpgradeApplicationCopyWithImpl;
@override @useResult
$Res call({
 String message
});




}
/// @nodoc
class _$ForceUpgradeApplicationCopyWithImpl<$Res>
    implements $ForceUpgradeApplicationCopyWith<$Res> {
  _$ForceUpgradeApplicationCopyWithImpl(this._self, this._then);

  final ForceUpgradeApplication _self;
  final $Res Function(ForceUpgradeApplication) _then;

/// Create a copy of BaseException
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(ForceUpgradeApplication(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
