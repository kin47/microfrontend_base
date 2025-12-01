// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProductState {

 ProductScreenViewModel get viewModel;
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProductStateCopyWith<ProductState> get copyWith => _$ProductStateCopyWithImpl<ProductState>(this as ProductState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProductState&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'ProductState(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $ProductStateCopyWith<$Res>  {
  factory $ProductStateCopyWith(ProductState value, $Res Function(ProductState) _then) = _$ProductStateCopyWithImpl;
@useResult
$Res call({
 ProductScreenViewModel viewModel
});


$ProductScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$ProductStateCopyWithImpl<$Res>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._self, this._then);

  final ProductState _self;
  final $Res Function(ProductState) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewModel = null,}) {
  return _then(_self.copyWith(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as ProductScreenViewModel,
  ));
}
/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductScreenViewModelCopyWith<$Res> get viewModel {
  
  return $ProductScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProductState].
extension ProductStatePatterns on ProductState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _ProductStatePrimary value)?  primary,TResult Function( _ProductStateLoading value)?  loading,TResult Function( _ProductStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProductStatePrimary() when primary != null:
return primary(_that);case _ProductStateLoading() when loading != null:
return loading(_that);case _ProductStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _ProductStatePrimary value)  primary,required TResult Function( _ProductStateLoading value)  loading,required TResult Function( _ProductStateError value)  error,}){
final _that = this;
switch (_that) {
case _ProductStatePrimary():
return primary(_that);case _ProductStateLoading():
return loading(_that);case _ProductStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _ProductStatePrimary value)?  primary,TResult? Function( _ProductStateLoading value)?  loading,TResult? Function( _ProductStateError value)?  error,}){
final _that = this;
switch (_that) {
case _ProductStatePrimary() when primary != null:
return primary(_that);case _ProductStateLoading() when loading != null:
return loading(_that);case _ProductStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ProductScreenViewModel viewModel)?  primary,TResult Function( ProductScreenViewModel viewModel)?  loading,TResult Function( ProductScreenViewModel viewModel,  BaseException exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProductStatePrimary() when primary != null:
return primary(_that.viewModel);case _ProductStateLoading() when loading != null:
return loading(_that.viewModel);case _ProductStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ProductScreenViewModel viewModel)  primary,required TResult Function( ProductScreenViewModel viewModel)  loading,required TResult Function( ProductScreenViewModel viewModel,  BaseException exception)  error,}) {final _that = this;
switch (_that) {
case _ProductStatePrimary():
return primary(_that.viewModel);case _ProductStateLoading():
return loading(_that.viewModel);case _ProductStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ProductScreenViewModel viewModel)?  primary,TResult? Function( ProductScreenViewModel viewModel)?  loading,TResult? Function( ProductScreenViewModel viewModel,  BaseException exception)?  error,}) {final _that = this;
switch (_that) {
case _ProductStatePrimary() when primary != null:
return primary(_that.viewModel);case _ProductStateLoading() when loading != null:
return loading(_that.viewModel);case _ProductStateError() when error != null:
return error(_that.viewModel,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _ProductStatePrimary extends ProductState {
  const _ProductStatePrimary({this.viewModel = const ProductScreenViewModel()}): super._();
  

@override@JsonKey() final  ProductScreenViewModel viewModel;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStatePrimaryCopyWith<_ProductStatePrimary> get copyWith => __$ProductStatePrimaryCopyWithImpl<_ProductStatePrimary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStatePrimary&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'ProductState.primary(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$ProductStatePrimaryCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStatePrimaryCopyWith(_ProductStatePrimary value, $Res Function(_ProductStatePrimary) _then) = __$ProductStatePrimaryCopyWithImpl;
@override @useResult
$Res call({
 ProductScreenViewModel viewModel
});


@override $ProductScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$ProductStatePrimaryCopyWithImpl<$Res>
    implements _$ProductStatePrimaryCopyWith<$Res> {
  __$ProductStatePrimaryCopyWithImpl(this._self, this._then);

  final _ProductStatePrimary _self;
  final $Res Function(_ProductStatePrimary) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_ProductStatePrimary(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as ProductScreenViewModel,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductScreenViewModelCopyWith<$Res> get viewModel {
  
  return $ProductScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _ProductStateLoading extends ProductState {
  const _ProductStateLoading({this.viewModel = const ProductScreenViewModel()}): super._();
  

@override@JsonKey() final  ProductScreenViewModel viewModel;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateLoadingCopyWith<_ProductStateLoading> get copyWith => __$ProductStateLoadingCopyWithImpl<_ProductStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStateLoading&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'ProductState.loading(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$ProductStateLoadingCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateLoadingCopyWith(_ProductStateLoading value, $Res Function(_ProductStateLoading) _then) = __$ProductStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 ProductScreenViewModel viewModel
});


@override $ProductScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$ProductStateLoadingCopyWithImpl<$Res>
    implements _$ProductStateLoadingCopyWith<$Res> {
  __$ProductStateLoadingCopyWithImpl(this._self, this._then);

  final _ProductStateLoading _self;
  final $Res Function(_ProductStateLoading) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_ProductStateLoading(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as ProductScreenViewModel,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductScreenViewModelCopyWith<$Res> get viewModel {
  
  return $ProductScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _ProductStateError extends ProductState {
  const _ProductStateError({this.viewModel = const ProductScreenViewModel(), this.exception = const BaseException()}): super._();
  

@override@JsonKey() final  ProductScreenViewModel viewModel;
@JsonKey() final  BaseException exception;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProductStateErrorCopyWith<_ProductStateError> get copyWith => __$ProductStateErrorCopyWithImpl<_ProductStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProductStateError&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel,exception);

@override
String toString() {
  return 'ProductState.error(viewModel: $viewModel, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$ProductStateErrorCopyWith<$Res> implements $ProductStateCopyWith<$Res> {
  factory _$ProductStateErrorCopyWith(_ProductStateError value, $Res Function(_ProductStateError) _then) = __$ProductStateErrorCopyWithImpl;
@override @useResult
$Res call({
 ProductScreenViewModel viewModel, BaseException exception
});


@override $ProductScreenViewModelCopyWith<$Res> get viewModel;$BaseExceptionCopyWith<$Res> get exception;

}
/// @nodoc
class __$ProductStateErrorCopyWithImpl<$Res>
    implements _$ProductStateErrorCopyWith<$Res> {
  __$ProductStateErrorCopyWithImpl(this._self, this._then);

  final _ProductStateError _self;
  final $Res Function(_ProductStateError) _then;

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,Object? exception = null,}) {
  return _then(_ProductStateError(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as ProductScreenViewModel,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}

/// Create a copy of ProductState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProductScreenViewModelCopyWith<$Res> get viewModel {
  
  return $ProductScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}/// Create a copy of ProductState
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
