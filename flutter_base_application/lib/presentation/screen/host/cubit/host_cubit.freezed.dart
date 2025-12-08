// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HostState {

 HostScreenViewModel get viewModel;
/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostStateCopyWith<HostState> get copyWith => _$HostStateCopyWithImpl<HostState>(this as HostState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostState&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'HostState(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $HostStateCopyWith<$Res>  {
  factory $HostStateCopyWith(HostState value, $Res Function(HostState) _then) = _$HostStateCopyWithImpl;
@useResult
$Res call({
 HostScreenViewModel viewModel
});


$HostScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$HostStateCopyWithImpl<$Res>
    implements $HostStateCopyWith<$Res> {
  _$HostStateCopyWithImpl(this._self, this._then);

  final HostState _self;
  final $Res Function(HostState) _then;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewModel = null,}) {
  return _then(_self.copyWith(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as HostScreenViewModel,
  ));
}
/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<$Res> get viewModel {
  
  return $HostScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [HostState].
extension HostStatePatterns on HostState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _HostStateInitial value)?  primary,TResult Function( _HostStateLoading value)?  loading,TResult Function( _HostStateError value)?  error,TResult Function( _HostStateLoggedOut value)?  loggedOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostStateInitial() when primary != null:
return primary(_that);case _HostStateLoading() when loading != null:
return loading(_that);case _HostStateError() when error != null:
return error(_that);case _HostStateLoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _HostStateInitial value)  primary,required TResult Function( _HostStateLoading value)  loading,required TResult Function( _HostStateError value)  error,required TResult Function( _HostStateLoggedOut value)  loggedOut,}){
final _that = this;
switch (_that) {
case _HostStateInitial():
return primary(_that);case _HostStateLoading():
return loading(_that);case _HostStateError():
return error(_that);case _HostStateLoggedOut():
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _HostStateInitial value)?  primary,TResult? Function( _HostStateLoading value)?  loading,TResult? Function( _HostStateError value)?  error,TResult? Function( _HostStateLoggedOut value)?  loggedOut,}){
final _that = this;
switch (_that) {
case _HostStateInitial() when primary != null:
return primary(_that);case _HostStateLoading() when loading != null:
return loading(_that);case _HostStateError() when error != null:
return error(_that);case _HostStateLoggedOut() when loggedOut != null:
return loggedOut(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( HostScreenViewModel viewModel)?  primary,TResult Function( HostScreenViewModel viewModel)?  loading,TResult Function( HostScreenViewModel viewModel,  BaseException exception)?  error,TResult Function( HostScreenViewModel viewModel)?  loggedOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostStateInitial() when primary != null:
return primary(_that.viewModel);case _HostStateLoading() when loading != null:
return loading(_that.viewModel);case _HostStateError() when error != null:
return error(_that.viewModel,_that.exception);case _HostStateLoggedOut() when loggedOut != null:
return loggedOut(_that.viewModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( HostScreenViewModel viewModel)  primary,required TResult Function( HostScreenViewModel viewModel)  loading,required TResult Function( HostScreenViewModel viewModel,  BaseException exception)  error,required TResult Function( HostScreenViewModel viewModel)  loggedOut,}) {final _that = this;
switch (_that) {
case _HostStateInitial():
return primary(_that.viewModel);case _HostStateLoading():
return loading(_that.viewModel);case _HostStateError():
return error(_that.viewModel,_that.exception);case _HostStateLoggedOut():
return loggedOut(_that.viewModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( HostScreenViewModel viewModel)?  primary,TResult? Function( HostScreenViewModel viewModel)?  loading,TResult? Function( HostScreenViewModel viewModel,  BaseException exception)?  error,TResult? Function( HostScreenViewModel viewModel)?  loggedOut,}) {final _that = this;
switch (_that) {
case _HostStateInitial() when primary != null:
return primary(_that.viewModel);case _HostStateLoading() when loading != null:
return loading(_that.viewModel);case _HostStateError() when error != null:
return error(_that.viewModel,_that.exception);case _HostStateLoggedOut() when loggedOut != null:
return loggedOut(_that.viewModel);case _:
  return null;

}
}

}

/// @nodoc


class _HostStateInitial extends HostState {
  const _HostStateInitial({this.viewModel = const HostScreenViewModel()}): super._();
  

@override@JsonKey() final  HostScreenViewModel viewModel;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostStateInitialCopyWith<_HostStateInitial> get copyWith => __$HostStateInitialCopyWithImpl<_HostStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostStateInitial&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'HostState.primary(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$HostStateInitialCopyWith<$Res> implements $HostStateCopyWith<$Res> {
  factory _$HostStateInitialCopyWith(_HostStateInitial value, $Res Function(_HostStateInitial) _then) = __$HostStateInitialCopyWithImpl;
@override @useResult
$Res call({
 HostScreenViewModel viewModel
});


@override $HostScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$HostStateInitialCopyWithImpl<$Res>
    implements _$HostStateInitialCopyWith<$Res> {
  __$HostStateInitialCopyWithImpl(this._self, this._then);

  final _HostStateInitial _self;
  final $Res Function(_HostStateInitial) _then;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_HostStateInitial(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as HostScreenViewModel,
  ));
}

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<$Res> get viewModel {
  
  return $HostScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _HostStateLoading extends HostState {
  const _HostStateLoading({this.viewModel = const HostScreenViewModel()}): super._();
  

@override@JsonKey() final  HostScreenViewModel viewModel;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostStateLoadingCopyWith<_HostStateLoading> get copyWith => __$HostStateLoadingCopyWithImpl<_HostStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostStateLoading&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'HostState.loading(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$HostStateLoadingCopyWith<$Res> implements $HostStateCopyWith<$Res> {
  factory _$HostStateLoadingCopyWith(_HostStateLoading value, $Res Function(_HostStateLoading) _then) = __$HostStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 HostScreenViewModel viewModel
});


@override $HostScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$HostStateLoadingCopyWithImpl<$Res>
    implements _$HostStateLoadingCopyWith<$Res> {
  __$HostStateLoadingCopyWithImpl(this._self, this._then);

  final _HostStateLoading _self;
  final $Res Function(_HostStateLoading) _then;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_HostStateLoading(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as HostScreenViewModel,
  ));
}

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<$Res> get viewModel {
  
  return $HostScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _HostStateError extends HostState {
  const _HostStateError({this.viewModel = const HostScreenViewModel(), this.exception = const BaseException()}): super._();
  

@override@JsonKey() final  HostScreenViewModel viewModel;
@JsonKey() final  BaseException exception;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostStateErrorCopyWith<_HostStateError> get copyWith => __$HostStateErrorCopyWithImpl<_HostStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostStateError&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel,exception);

@override
String toString() {
  return 'HostState.error(viewModel: $viewModel, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$HostStateErrorCopyWith<$Res> implements $HostStateCopyWith<$Res> {
  factory _$HostStateErrorCopyWith(_HostStateError value, $Res Function(_HostStateError) _then) = __$HostStateErrorCopyWithImpl;
@override @useResult
$Res call({
 HostScreenViewModel viewModel, BaseException exception
});


@override $HostScreenViewModelCopyWith<$Res> get viewModel;$BaseExceptionCopyWith<$Res> get exception;

}
/// @nodoc
class __$HostStateErrorCopyWithImpl<$Res>
    implements _$HostStateErrorCopyWith<$Res> {
  __$HostStateErrorCopyWithImpl(this._self, this._then);

  final _HostStateError _self;
  final $Res Function(_HostStateError) _then;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,Object? exception = null,}) {
  return _then(_HostStateError(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as HostScreenViewModel,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<$Res> get viewModel {
  
  return $HostScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseExceptionCopyWith<$Res> get exception {
  
  return $BaseExceptionCopyWith<$Res>(_self.exception, (value) {
    return _then(_self.copyWith(exception: value));
  });
}
}

/// @nodoc


class _HostStateLoggedOut extends HostState {
  const _HostStateLoggedOut({this.viewModel = const HostScreenViewModel()}): super._();
  

@override@JsonKey() final  HostScreenViewModel viewModel;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostStateLoggedOutCopyWith<_HostStateLoggedOut> get copyWith => __$HostStateLoggedOutCopyWithImpl<_HostStateLoggedOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostStateLoggedOut&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'HostState.loggedOut(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$HostStateLoggedOutCopyWith<$Res> implements $HostStateCopyWith<$Res> {
  factory _$HostStateLoggedOutCopyWith(_HostStateLoggedOut value, $Res Function(_HostStateLoggedOut) _then) = __$HostStateLoggedOutCopyWithImpl;
@override @useResult
$Res call({
 HostScreenViewModel viewModel
});


@override $HostScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$HostStateLoggedOutCopyWithImpl<$Res>
    implements _$HostStateLoggedOutCopyWith<$Res> {
  __$HostStateLoggedOutCopyWithImpl(this._self, this._then);

  final _HostStateLoggedOut _self;
  final $Res Function(_HostStateLoggedOut) _then;

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_HostStateLoggedOut(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as HostScreenViewModel,
  ));
}

/// Create a copy of HostState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<$Res> get viewModel {
  
  return $HostScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

// dart format on
