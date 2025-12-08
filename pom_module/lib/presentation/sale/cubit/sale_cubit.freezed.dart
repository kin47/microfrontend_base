// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaleState {

 SaleScreenViewModel get viewModel;
/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleStateCopyWith<SaleState> get copyWith => _$SaleStateCopyWithImpl<SaleState>(this as SaleState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleState&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'SaleState(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $SaleStateCopyWith<$Res>  {
  factory $SaleStateCopyWith(SaleState value, $Res Function(SaleState) _then) = _$SaleStateCopyWithImpl;
@useResult
$Res call({
 SaleScreenViewModel viewModel
});


$SaleScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$SaleStateCopyWithImpl<$Res>
    implements $SaleStateCopyWith<$Res> {
  _$SaleStateCopyWithImpl(this._self, this._then);

  final SaleState _self;
  final $Res Function(SaleState) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewModel = null,}) {
  return _then(_self.copyWith(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as SaleScreenViewModel,
  ));
}
/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<$Res> get viewModel {
  
  return $SaleScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [SaleState].
extension SaleStatePatterns on SaleState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _SaleStateInitial value)?  initial,TResult Function( _SaleStateLoading value)?  loading,TResult Function( _SaleStateLoaded value)?  loaded,TResult Function( _SaleStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleStateInitial() when initial != null:
return initial(_that);case _SaleStateLoading() when loading != null:
return loading(_that);case _SaleStateLoaded() when loaded != null:
return loaded(_that);case _SaleStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _SaleStateInitial value)  initial,required TResult Function( _SaleStateLoading value)  loading,required TResult Function( _SaleStateLoaded value)  loaded,required TResult Function( _SaleStateError value)  error,}){
final _that = this;
switch (_that) {
case _SaleStateInitial():
return initial(_that);case _SaleStateLoading():
return loading(_that);case _SaleStateLoaded():
return loaded(_that);case _SaleStateError():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _SaleStateInitial value)?  initial,TResult? Function( _SaleStateLoading value)?  loading,TResult? Function( _SaleStateLoaded value)?  loaded,TResult? Function( _SaleStateError value)?  error,}){
final _that = this;
switch (_that) {
case _SaleStateInitial() when initial != null:
return initial(_that);case _SaleStateLoading() when loading != null:
return loading(_that);case _SaleStateLoaded() when loaded != null:
return loaded(_that);case _SaleStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( SaleScreenViewModel viewModel)?  initial,TResult Function( SaleScreenViewModel viewModel)?  loading,TResult Function( SaleScreenViewModel viewModel)?  loaded,TResult Function( SaleScreenViewModel viewModel,  BaseException exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleStateInitial() when initial != null:
return initial(_that.viewModel);case _SaleStateLoading() when loading != null:
return loading(_that.viewModel);case _SaleStateLoaded() when loaded != null:
return loaded(_that.viewModel);case _SaleStateError() when error != null:
return error(_that.viewModel,_that.exception);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( SaleScreenViewModel viewModel)  initial,required TResult Function( SaleScreenViewModel viewModel)  loading,required TResult Function( SaleScreenViewModel viewModel)  loaded,required TResult Function( SaleScreenViewModel viewModel,  BaseException exception)  error,}) {final _that = this;
switch (_that) {
case _SaleStateInitial():
return initial(_that.viewModel);case _SaleStateLoading():
return loading(_that.viewModel);case _SaleStateLoaded():
return loaded(_that.viewModel);case _SaleStateError():
return error(_that.viewModel,_that.exception);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( SaleScreenViewModel viewModel)?  initial,TResult? Function( SaleScreenViewModel viewModel)?  loading,TResult? Function( SaleScreenViewModel viewModel)?  loaded,TResult? Function( SaleScreenViewModel viewModel,  BaseException exception)?  error,}) {final _that = this;
switch (_that) {
case _SaleStateInitial() when initial != null:
return initial(_that.viewModel);case _SaleStateLoading() when loading != null:
return loading(_that.viewModel);case _SaleStateLoaded() when loaded != null:
return loaded(_that.viewModel);case _SaleStateError() when error != null:
return error(_that.viewModel,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _SaleStateInitial extends SaleState {
  const _SaleStateInitial({this.viewModel = const SaleScreenViewModel()}): super._();
  

@override@JsonKey() final  SaleScreenViewModel viewModel;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStateInitialCopyWith<_SaleStateInitial> get copyWith => __$SaleStateInitialCopyWithImpl<_SaleStateInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleStateInitial&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'SaleState.initial(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$SaleStateInitialCopyWith<$Res> implements $SaleStateCopyWith<$Res> {
  factory _$SaleStateInitialCopyWith(_SaleStateInitial value, $Res Function(_SaleStateInitial) _then) = __$SaleStateInitialCopyWithImpl;
@override @useResult
$Res call({
 SaleScreenViewModel viewModel
});


@override $SaleScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$SaleStateInitialCopyWithImpl<$Res>
    implements _$SaleStateInitialCopyWith<$Res> {
  __$SaleStateInitialCopyWithImpl(this._self, this._then);

  final _SaleStateInitial _self;
  final $Res Function(_SaleStateInitial) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_SaleStateInitial(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as SaleScreenViewModel,
  ));
}

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<$Res> get viewModel {
  
  return $SaleScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _SaleStateLoading extends SaleState {
  const _SaleStateLoading({this.viewModel = const SaleScreenViewModel()}): super._();
  

@override@JsonKey() final  SaleScreenViewModel viewModel;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStateLoadingCopyWith<_SaleStateLoading> get copyWith => __$SaleStateLoadingCopyWithImpl<_SaleStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleStateLoading&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'SaleState.loading(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$SaleStateLoadingCopyWith<$Res> implements $SaleStateCopyWith<$Res> {
  factory _$SaleStateLoadingCopyWith(_SaleStateLoading value, $Res Function(_SaleStateLoading) _then) = __$SaleStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 SaleScreenViewModel viewModel
});


@override $SaleScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$SaleStateLoadingCopyWithImpl<$Res>
    implements _$SaleStateLoadingCopyWith<$Res> {
  __$SaleStateLoadingCopyWithImpl(this._self, this._then);

  final _SaleStateLoading _self;
  final $Res Function(_SaleStateLoading) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_SaleStateLoading(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as SaleScreenViewModel,
  ));
}

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<$Res> get viewModel {
  
  return $SaleScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _SaleStateLoaded extends SaleState {
  const _SaleStateLoaded({this.viewModel = const SaleScreenViewModel()}): super._();
  

@override@JsonKey() final  SaleScreenViewModel viewModel;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStateLoadedCopyWith<_SaleStateLoaded> get copyWith => __$SaleStateLoadedCopyWithImpl<_SaleStateLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleStateLoaded&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'SaleState.loaded(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$SaleStateLoadedCopyWith<$Res> implements $SaleStateCopyWith<$Res> {
  factory _$SaleStateLoadedCopyWith(_SaleStateLoaded value, $Res Function(_SaleStateLoaded) _then) = __$SaleStateLoadedCopyWithImpl;
@override @useResult
$Res call({
 SaleScreenViewModel viewModel
});


@override $SaleScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$SaleStateLoadedCopyWithImpl<$Res>
    implements _$SaleStateLoadedCopyWith<$Res> {
  __$SaleStateLoadedCopyWithImpl(this._self, this._then);

  final _SaleStateLoaded _self;
  final $Res Function(_SaleStateLoaded) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_SaleStateLoaded(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as SaleScreenViewModel,
  ));
}

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<$Res> get viewModel {
  
  return $SaleScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _SaleStateError extends SaleState {
  const _SaleStateError({this.viewModel = const SaleScreenViewModel(), this.exception = const BaseException()}): super._();
  

@override@JsonKey() final  SaleScreenViewModel viewModel;
@JsonKey() final  BaseException exception;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleStateErrorCopyWith<_SaleStateError> get copyWith => __$SaleStateErrorCopyWithImpl<_SaleStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleStateError&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel,exception);

@override
String toString() {
  return 'SaleState.error(viewModel: $viewModel, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$SaleStateErrorCopyWith<$Res> implements $SaleStateCopyWith<$Res> {
  factory _$SaleStateErrorCopyWith(_SaleStateError value, $Res Function(_SaleStateError) _then) = __$SaleStateErrorCopyWithImpl;
@override @useResult
$Res call({
 SaleScreenViewModel viewModel, BaseException exception
});


@override $SaleScreenViewModelCopyWith<$Res> get viewModel;$BaseExceptionCopyWith<$Res> get exception;

}
/// @nodoc
class __$SaleStateErrorCopyWithImpl<$Res>
    implements _$SaleStateErrorCopyWith<$Res> {
  __$SaleStateErrorCopyWithImpl(this._self, this._then);

  final _SaleStateError _self;
  final $Res Function(_SaleStateError) _then;

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,Object? exception = null,}) {
  return _then(_SaleStateError(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as SaleScreenViewModel,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}

/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<$Res> get viewModel {
  
  return $SaleScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}/// Create a copy of SaleState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$BaseExceptionCopyWith<$Res> get exception {
  
  return $BaseExceptionCopyWith<$Res>(_self.exception, (value) {
    return _then(_self.copyWith(exception: value));
  });
}
}

// dart format on
