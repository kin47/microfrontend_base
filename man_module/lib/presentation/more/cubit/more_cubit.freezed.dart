// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoreState {

 MoreViewModel get viewModel;
/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreStateCopyWith<MoreState> get copyWith => _$MoreStateCopyWithImpl<MoreState>(this as MoreState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreState&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'MoreState(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $MoreStateCopyWith<$Res>  {
  factory $MoreStateCopyWith(MoreState value, $Res Function(MoreState) _then) = _$MoreStateCopyWithImpl;
@useResult
$Res call({
 MoreViewModel viewModel
});


$MoreViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$MoreStateCopyWithImpl<$Res>
    implements $MoreStateCopyWith<$Res> {
  _$MoreStateCopyWithImpl(this._self, this._then);

  final MoreState _self;
  final $Res Function(MoreState) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewModel = null,}) {
  return _then(_self.copyWith(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as MoreViewModel,
  ));
}
/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<$Res> get viewModel {
  
  return $MoreViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [MoreState].
extension MoreStatePatterns on MoreState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _MoreStateInitial value)?  primary,TResult Function( _MoreStateLoading value)?  loading,TResult Function( _MoreStateError value)?  error,TResult Function( _MoreStateLoggedOut value)?  loggedOut,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoreStateInitial() when primary != null:
return primary(_that);case _MoreStateLoading() when loading != null:
return loading(_that);case _MoreStateError() when error != null:
return error(_that);case _MoreStateLoggedOut() when loggedOut != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _MoreStateInitial value)  primary,required TResult Function( _MoreStateLoading value)  loading,required TResult Function( _MoreStateError value)  error,required TResult Function( _MoreStateLoggedOut value)  loggedOut,}){
final _that = this;
switch (_that) {
case _MoreStateInitial():
return primary(_that);case _MoreStateLoading():
return loading(_that);case _MoreStateError():
return error(_that);case _MoreStateLoggedOut():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _MoreStateInitial value)?  primary,TResult? Function( _MoreStateLoading value)?  loading,TResult? Function( _MoreStateError value)?  error,TResult? Function( _MoreStateLoggedOut value)?  loggedOut,}){
final _that = this;
switch (_that) {
case _MoreStateInitial() when primary != null:
return primary(_that);case _MoreStateLoading() when loading != null:
return loading(_that);case _MoreStateError() when error != null:
return error(_that);case _MoreStateLoggedOut() when loggedOut != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( MoreViewModel viewModel)?  primary,TResult Function( MoreViewModel viewModel)?  loading,TResult Function( MoreViewModel viewModel,  BaseException exception)?  error,TResult Function( MoreViewModel viewModel)?  loggedOut,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoreStateInitial() when primary != null:
return primary(_that.viewModel);case _MoreStateLoading() when loading != null:
return loading(_that.viewModel);case _MoreStateError() when error != null:
return error(_that.viewModel,_that.exception);case _MoreStateLoggedOut() when loggedOut != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( MoreViewModel viewModel)  primary,required TResult Function( MoreViewModel viewModel)  loading,required TResult Function( MoreViewModel viewModel,  BaseException exception)  error,required TResult Function( MoreViewModel viewModel)  loggedOut,}) {final _that = this;
switch (_that) {
case _MoreStateInitial():
return primary(_that.viewModel);case _MoreStateLoading():
return loading(_that.viewModel);case _MoreStateError():
return error(_that.viewModel,_that.exception);case _MoreStateLoggedOut():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( MoreViewModel viewModel)?  primary,TResult? Function( MoreViewModel viewModel)?  loading,TResult? Function( MoreViewModel viewModel,  BaseException exception)?  error,TResult? Function( MoreViewModel viewModel)?  loggedOut,}) {final _that = this;
switch (_that) {
case _MoreStateInitial() when primary != null:
return primary(_that.viewModel);case _MoreStateLoading() when loading != null:
return loading(_that.viewModel);case _MoreStateError() when error != null:
return error(_that.viewModel,_that.exception);case _MoreStateLoggedOut() when loggedOut != null:
return loggedOut(_that.viewModel);case _:
  return null;

}
}

}

/// @nodoc


class _MoreStateInitial extends MoreState {
  const _MoreStateInitial({this.viewModel = const MoreViewModel()}): super._();
  

@override@JsonKey() final  MoreViewModel viewModel;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreStateInitialCopyWith<_MoreStateInitial> get copyWith => __$MoreStateInitialCopyWithImpl<_MoreStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreStateInitial&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'MoreState.primary(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$MoreStateInitialCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory _$MoreStateInitialCopyWith(_MoreStateInitial value, $Res Function(_MoreStateInitial) _then) = __$MoreStateInitialCopyWithImpl;
@override @useResult
$Res call({
 MoreViewModel viewModel
});


@override $MoreViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$MoreStateInitialCopyWithImpl<$Res>
    implements _$MoreStateInitialCopyWith<$Res> {
  __$MoreStateInitialCopyWithImpl(this._self, this._then);

  final _MoreStateInitial _self;
  final $Res Function(_MoreStateInitial) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_MoreStateInitial(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as MoreViewModel,
  ));
}

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<$Res> get viewModel {
  
  return $MoreViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _MoreStateLoading extends MoreState {
  const _MoreStateLoading({this.viewModel = const MoreViewModel()}): super._();
  

@override@JsonKey() final  MoreViewModel viewModel;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreStateLoadingCopyWith<_MoreStateLoading> get copyWith => __$MoreStateLoadingCopyWithImpl<_MoreStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreStateLoading&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'MoreState.loading(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$MoreStateLoadingCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory _$MoreStateLoadingCopyWith(_MoreStateLoading value, $Res Function(_MoreStateLoading) _then) = __$MoreStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 MoreViewModel viewModel
});


@override $MoreViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$MoreStateLoadingCopyWithImpl<$Res>
    implements _$MoreStateLoadingCopyWith<$Res> {
  __$MoreStateLoadingCopyWithImpl(this._self, this._then);

  final _MoreStateLoading _self;
  final $Res Function(_MoreStateLoading) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_MoreStateLoading(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as MoreViewModel,
  ));
}

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<$Res> get viewModel {
  
  return $MoreViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _MoreStateError extends MoreState {
  const _MoreStateError({this.viewModel = const MoreViewModel(), this.exception = const BaseException()}): super._();
  

@override@JsonKey() final  MoreViewModel viewModel;
@JsonKey() final  BaseException exception;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreStateErrorCopyWith<_MoreStateError> get copyWith => __$MoreStateErrorCopyWithImpl<_MoreStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreStateError&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel,exception);

@override
String toString() {
  return 'MoreState.error(viewModel: $viewModel, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$MoreStateErrorCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory _$MoreStateErrorCopyWith(_MoreStateError value, $Res Function(_MoreStateError) _then) = __$MoreStateErrorCopyWithImpl;
@override @useResult
$Res call({
 MoreViewModel viewModel, BaseException exception
});


@override $MoreViewModelCopyWith<$Res> get viewModel;$BaseExceptionCopyWith<$Res> get exception;

}
/// @nodoc
class __$MoreStateErrorCopyWithImpl<$Res>
    implements _$MoreStateErrorCopyWith<$Res> {
  __$MoreStateErrorCopyWithImpl(this._self, this._then);

  final _MoreStateError _self;
  final $Res Function(_MoreStateError) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,Object? exception = null,}) {
  return _then(_MoreStateError(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as MoreViewModel,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<$Res> get viewModel {
  
  return $MoreViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}/// Create a copy of MoreState
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


class _MoreStateLoggedOut extends MoreState {
  const _MoreStateLoggedOut({this.viewModel = const MoreViewModel()}): super._();
  

@override@JsonKey() final  MoreViewModel viewModel;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreStateLoggedOutCopyWith<_MoreStateLoggedOut> get copyWith => __$MoreStateLoggedOutCopyWithImpl<_MoreStateLoggedOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreStateLoggedOut&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'MoreState.loggedOut(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$MoreStateLoggedOutCopyWith<$Res> implements $MoreStateCopyWith<$Res> {
  factory _$MoreStateLoggedOutCopyWith(_MoreStateLoggedOut value, $Res Function(_MoreStateLoggedOut) _then) = __$MoreStateLoggedOutCopyWithImpl;
@override @useResult
$Res call({
 MoreViewModel viewModel
});


@override $MoreViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$MoreStateLoggedOutCopyWithImpl<$Res>
    implements _$MoreStateLoggedOutCopyWith<$Res> {
  __$MoreStateLoggedOutCopyWithImpl(this._self, this._then);

  final _MoreStateLoggedOut _self;
  final $Res Function(_MoreStateLoggedOut) _then;

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_MoreStateLoggedOut(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as MoreViewModel,
  ));
}

/// Create a copy of MoreState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<$Res> get viewModel {
  
  return $MoreViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

// dart format on
