// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvoiceEvent()';
}


}

/// @nodoc
class $InvoiceEventCopyWith<$Res>  {
$InvoiceEventCopyWith(InvoiceEvent _, $Res Function(InvoiceEvent) __);
}


/// Adds pattern-matching-related methods to [InvoiceEvent].
extension InvoiceEventPatterns on InvoiceEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Started value)?  started,TResult Function( _FetchInvoices value)?  fetchInvoices,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FetchInvoices() when fetchInvoices != null:
return fetchInvoices(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Started value)  started,required TResult Function( _FetchInvoices value)  fetchInvoices,}){
final _that = this;
switch (_that) {
case _Started():
return started(_that);case _FetchInvoices():
return fetchInvoices(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Started value)?  started,TResult? Function( _FetchInvoices value)?  fetchInvoices,}){
final _that = this;
switch (_that) {
case _Started() when started != null:
return started(_that);case _FetchInvoices() when fetchInvoices != null:
return fetchInvoices(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  started,TResult Function()?  fetchInvoices,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FetchInvoices() when fetchInvoices != null:
return fetchInvoices();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  started,required TResult Function()  fetchInvoices,}) {final _that = this;
switch (_that) {
case _Started():
return started();case _FetchInvoices():
return fetchInvoices();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  started,TResult? Function()?  fetchInvoices,}) {final _that = this;
switch (_that) {
case _Started() when started != null:
return started();case _FetchInvoices() when fetchInvoices != null:
return fetchInvoices();case _:
  return null;

}
}

}

/// @nodoc


class _Started implements InvoiceEvent {
  const _Started();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Started);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvoiceEvent.started()';
}


}




/// @nodoc


class _FetchInvoices implements InvoiceEvent {
  const _FetchInvoices();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchInvoices);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'InvoiceEvent.fetchInvoices()';
}


}




/// @nodoc
mixin _$InvoiceState {

 InvoiceScreenViewModel get viewModel;
/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceStateCopyWith<InvoiceState> get copyWith => _$InvoiceStateCopyWithImpl<InvoiceState>(this as InvoiceState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceState&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'InvoiceState(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class $InvoiceStateCopyWith<$Res>  {
  factory $InvoiceStateCopyWith(InvoiceState value, $Res Function(InvoiceState) _then) = _$InvoiceStateCopyWithImpl;
@useResult
$Res call({
 InvoiceScreenViewModel viewModel
});


$InvoiceScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class _$InvoiceStateCopyWithImpl<$Res>
    implements $InvoiceStateCopyWith<$Res> {
  _$InvoiceStateCopyWithImpl(this._self, this._then);

  final InvoiceState _self;
  final $Res Function(InvoiceState) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? viewModel = null,}) {
  return _then(_self.copyWith(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as InvoiceScreenViewModel,
  ));
}
/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvoiceScreenViewModelCopyWith<$Res> get viewModel {
  
  return $InvoiceScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}


/// Adds pattern-matching-related methods to [InvoiceState].
extension InvoiceStatePatterns on InvoiceState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _InvoiceStatePrimary value)?  primary,TResult Function( _InvoiceStateLoading value)?  loading,TResult Function( _InvoiceStateError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceStatePrimary() when primary != null:
return primary(_that);case _InvoiceStateLoading() when loading != null:
return loading(_that);case _InvoiceStateError() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _InvoiceStatePrimary value)  primary,required TResult Function( _InvoiceStateLoading value)  loading,required TResult Function( _InvoiceStateError value)  error,}){
final _that = this;
switch (_that) {
case _InvoiceStatePrimary():
return primary(_that);case _InvoiceStateLoading():
return loading(_that);case _InvoiceStateError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _InvoiceStatePrimary value)?  primary,TResult? Function( _InvoiceStateLoading value)?  loading,TResult? Function( _InvoiceStateError value)?  error,}){
final _that = this;
switch (_that) {
case _InvoiceStatePrimary() when primary != null:
return primary(_that);case _InvoiceStateLoading() when loading != null:
return loading(_that);case _InvoiceStateError() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( InvoiceScreenViewModel viewModel)?  primary,TResult Function( InvoiceScreenViewModel viewModel)?  loading,TResult Function( InvoiceScreenViewModel viewModel,  BaseException exception)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceStatePrimary() when primary != null:
return primary(_that.viewModel);case _InvoiceStateLoading() when loading != null:
return loading(_that.viewModel);case _InvoiceStateError() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( InvoiceScreenViewModel viewModel)  primary,required TResult Function( InvoiceScreenViewModel viewModel)  loading,required TResult Function( InvoiceScreenViewModel viewModel,  BaseException exception)  error,}) {final _that = this;
switch (_that) {
case _InvoiceStatePrimary():
return primary(_that.viewModel);case _InvoiceStateLoading():
return loading(_that.viewModel);case _InvoiceStateError():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( InvoiceScreenViewModel viewModel)?  primary,TResult? Function( InvoiceScreenViewModel viewModel)?  loading,TResult? Function( InvoiceScreenViewModel viewModel,  BaseException exception)?  error,}) {final _that = this;
switch (_that) {
case _InvoiceStatePrimary() when primary != null:
return primary(_that.viewModel);case _InvoiceStateLoading() when loading != null:
return loading(_that.viewModel);case _InvoiceStateError() when error != null:
return error(_that.viewModel,_that.exception);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceStatePrimary extends InvoiceState {
  const _InvoiceStatePrimary({this.viewModel = const InvoiceScreenViewModel()}): super._();
  

@override@JsonKey() final  InvoiceScreenViewModel viewModel;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceStatePrimaryCopyWith<_InvoiceStatePrimary> get copyWith => __$InvoiceStatePrimaryCopyWithImpl<_InvoiceStatePrimary>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceStatePrimary&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'InvoiceState.primary(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$InvoiceStatePrimaryCopyWith<$Res> implements $InvoiceStateCopyWith<$Res> {
  factory _$InvoiceStatePrimaryCopyWith(_InvoiceStatePrimary value, $Res Function(_InvoiceStatePrimary) _then) = __$InvoiceStatePrimaryCopyWithImpl;
@override @useResult
$Res call({
 InvoiceScreenViewModel viewModel
});


@override $InvoiceScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$InvoiceStatePrimaryCopyWithImpl<$Res>
    implements _$InvoiceStatePrimaryCopyWith<$Res> {
  __$InvoiceStatePrimaryCopyWithImpl(this._self, this._then);

  final _InvoiceStatePrimary _self;
  final $Res Function(_InvoiceStatePrimary) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_InvoiceStatePrimary(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as InvoiceScreenViewModel,
  ));
}

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvoiceScreenViewModelCopyWith<$Res> get viewModel {
  
  return $InvoiceScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _InvoiceStateLoading extends InvoiceState {
  const _InvoiceStateLoading({this.viewModel = const InvoiceScreenViewModel()}): super._();
  

@override@JsonKey() final  InvoiceScreenViewModel viewModel;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceStateLoadingCopyWith<_InvoiceStateLoading> get copyWith => __$InvoiceStateLoadingCopyWithImpl<_InvoiceStateLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceStateLoading&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel);

@override
String toString() {
  return 'InvoiceState.loading(viewModel: $viewModel)';
}


}

/// @nodoc
abstract mixin class _$InvoiceStateLoadingCopyWith<$Res> implements $InvoiceStateCopyWith<$Res> {
  factory _$InvoiceStateLoadingCopyWith(_InvoiceStateLoading value, $Res Function(_InvoiceStateLoading) _then) = __$InvoiceStateLoadingCopyWithImpl;
@override @useResult
$Res call({
 InvoiceScreenViewModel viewModel
});


@override $InvoiceScreenViewModelCopyWith<$Res> get viewModel;

}
/// @nodoc
class __$InvoiceStateLoadingCopyWithImpl<$Res>
    implements _$InvoiceStateLoadingCopyWith<$Res> {
  __$InvoiceStateLoadingCopyWithImpl(this._self, this._then);

  final _InvoiceStateLoading _self;
  final $Res Function(_InvoiceStateLoading) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,}) {
  return _then(_InvoiceStateLoading(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as InvoiceScreenViewModel,
  ));
}

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvoiceScreenViewModelCopyWith<$Res> get viewModel {
  
  return $InvoiceScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}
}

/// @nodoc


class _InvoiceStateError extends InvoiceState {
  const _InvoiceStateError({this.viewModel = const InvoiceScreenViewModel(), this.exception = const BaseException()}): super._();
  

@override@JsonKey() final  InvoiceScreenViewModel viewModel;
@JsonKey() final  BaseException exception;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceStateErrorCopyWith<_InvoiceStateError> get copyWith => __$InvoiceStateErrorCopyWithImpl<_InvoiceStateError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceStateError&&(identical(other.viewModel, viewModel) || other.viewModel == viewModel)&&(identical(other.exception, exception) || other.exception == exception));
}


@override
int get hashCode => Object.hash(runtimeType,viewModel,exception);

@override
String toString() {
  return 'InvoiceState.error(viewModel: $viewModel, exception: $exception)';
}


}

/// @nodoc
abstract mixin class _$InvoiceStateErrorCopyWith<$Res> implements $InvoiceStateCopyWith<$Res> {
  factory _$InvoiceStateErrorCopyWith(_InvoiceStateError value, $Res Function(_InvoiceStateError) _then) = __$InvoiceStateErrorCopyWithImpl;
@override @useResult
$Res call({
 InvoiceScreenViewModel viewModel, BaseException exception
});


@override $InvoiceScreenViewModelCopyWith<$Res> get viewModel;$BaseExceptionCopyWith<$Res> get exception;

}
/// @nodoc
class __$InvoiceStateErrorCopyWithImpl<$Res>
    implements _$InvoiceStateErrorCopyWith<$Res> {
  __$InvoiceStateErrorCopyWithImpl(this._self, this._then);

  final _InvoiceStateError _self;
  final $Res Function(_InvoiceStateError) _then;

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? viewModel = null,Object? exception = null,}) {
  return _then(_InvoiceStateError(
viewModel: null == viewModel ? _self.viewModel : viewModel // ignore: cast_nullable_to_non_nullable
as InvoiceScreenViewModel,exception: null == exception ? _self.exception : exception // ignore: cast_nullable_to_non_nullable
as BaseException,
  ));
}

/// Create a copy of InvoiceState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InvoiceScreenViewModelCopyWith<$Res> get viewModel {
  
  return $InvoiceScreenViewModelCopyWith<$Res>(_self.viewModel, (value) {
    return _then(_self.copyWith(viewModel: value));
  });
}/// Create a copy of InvoiceState
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
