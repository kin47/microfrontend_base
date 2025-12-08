// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$InvoiceScreenViewModel {

 List<InvoiceEntity> get invoices;
/// Create a copy of InvoiceScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceScreenViewModelCopyWith<InvoiceScreenViewModel> get copyWith => _$InvoiceScreenViewModelCopyWithImpl<InvoiceScreenViewModel>(this as InvoiceScreenViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceScreenViewModel&&const DeepCollectionEquality().equals(other.invoices, invoices));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(invoices));

@override
String toString() {
  return 'InvoiceScreenViewModel(invoices: $invoices)';
}


}

/// @nodoc
abstract mixin class $InvoiceScreenViewModelCopyWith<$Res>  {
  factory $InvoiceScreenViewModelCopyWith(InvoiceScreenViewModel value, $Res Function(InvoiceScreenViewModel) _then) = _$InvoiceScreenViewModelCopyWithImpl;
@useResult
$Res call({
 List<InvoiceEntity> invoices
});




}
/// @nodoc
class _$InvoiceScreenViewModelCopyWithImpl<$Res>
    implements $InvoiceScreenViewModelCopyWith<$Res> {
  _$InvoiceScreenViewModelCopyWithImpl(this._self, this._then);

  final InvoiceScreenViewModel _self;
  final $Res Function(InvoiceScreenViewModel) _then;

/// Create a copy of InvoiceScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? invoices = null,}) {
  return _then(_self.copyWith(
invoices: null == invoices ? _self.invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<InvoiceEntity>,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceScreenViewModel].
extension InvoiceScreenViewModelPatterns on InvoiceScreenViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceScreenViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceScreenViewModel value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceScreenViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceScreenViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<InvoiceEntity> invoices)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceScreenViewModel() when $default != null:
return $default(_that.invoices);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<InvoiceEntity> invoices)  $default,) {final _that = this;
switch (_that) {
case _InvoiceScreenViewModel():
return $default(_that.invoices);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<InvoiceEntity> invoices)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceScreenViewModel() when $default != null:
return $default(_that.invoices);case _:
  return null;

}
}

}

/// @nodoc


class _InvoiceScreenViewModel extends InvoiceScreenViewModel {
  const _InvoiceScreenViewModel({final  List<InvoiceEntity> invoices = const []}): _invoices = invoices,super._();
  

 final  List<InvoiceEntity> _invoices;
@override@JsonKey() List<InvoiceEntity> get invoices {
  if (_invoices is EqualUnmodifiableListView) return _invoices;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_invoices);
}


/// Create a copy of InvoiceScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceScreenViewModelCopyWith<_InvoiceScreenViewModel> get copyWith => __$InvoiceScreenViewModelCopyWithImpl<_InvoiceScreenViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceScreenViewModel&&const DeepCollectionEquality().equals(other._invoices, _invoices));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_invoices));

@override
String toString() {
  return 'InvoiceScreenViewModel(invoices: $invoices)';
}


}

/// @nodoc
abstract mixin class _$InvoiceScreenViewModelCopyWith<$Res> implements $InvoiceScreenViewModelCopyWith<$Res> {
  factory _$InvoiceScreenViewModelCopyWith(_InvoiceScreenViewModel value, $Res Function(_InvoiceScreenViewModel) _then) = __$InvoiceScreenViewModelCopyWithImpl;
@override @useResult
$Res call({
 List<InvoiceEntity> invoices
});




}
/// @nodoc
class __$InvoiceScreenViewModelCopyWithImpl<$Res>
    implements _$InvoiceScreenViewModelCopyWith<$Res> {
  __$InvoiceScreenViewModelCopyWithImpl(this._self, this._then);

  final _InvoiceScreenViewModel _self;
  final $Res Function(_InvoiceScreenViewModel) _then;

/// Create a copy of InvoiceScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? invoices = null,}) {
  return _then(_InvoiceScreenViewModel(
invoices: null == invoices ? _self._invoices : invoices // ignore: cast_nullable_to_non_nullable
as List<InvoiceEntity>,
  ));
}


}

// dart format on
