// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'more_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MoreViewModel {

 String? get name;
/// Create a copy of MoreViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoreViewModelCopyWith<MoreViewModel> get copyWith => _$MoreViewModelCopyWithImpl<MoreViewModel>(this as MoreViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoreViewModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoreViewModel(name: $name)';
}


}

/// @nodoc
abstract mixin class $MoreViewModelCopyWith<$Res>  {
  factory $MoreViewModelCopyWith(MoreViewModel value, $Res Function(MoreViewModel) _then) = _$MoreViewModelCopyWithImpl;
@useResult
$Res call({
 String? name
});




}
/// @nodoc
class _$MoreViewModelCopyWithImpl<$Res>
    implements $MoreViewModelCopyWith<$Res> {
  _$MoreViewModelCopyWithImpl(this._self, this._then);

  final MoreViewModel _self;
  final $Res Function(MoreViewModel) _then;

/// Create a copy of MoreViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoreViewModel].
extension MoreViewModelPatterns on MoreViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoreViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoreViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoreViewModel value)  $default,){
final _that = this;
switch (_that) {
case _MoreViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoreViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _MoreViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoreViewModel() when $default != null:
return $default(_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name)  $default,) {final _that = this;
switch (_that) {
case _MoreViewModel():
return $default(_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name)?  $default,) {final _that = this;
switch (_that) {
case _MoreViewModel() when $default != null:
return $default(_that.name);case _:
  return null;

}
}

}

/// @nodoc


class _MoreViewModel extends MoreViewModel {
  const _MoreViewModel({this.name = ''}): super._();
  

@override@JsonKey() final  String? name;

/// Create a copy of MoreViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoreViewModelCopyWith<_MoreViewModel> get copyWith => __$MoreViewModelCopyWithImpl<_MoreViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoreViewModel&&(identical(other.name, name) || other.name == name));
}


@override
int get hashCode => Object.hash(runtimeType,name);

@override
String toString() {
  return 'MoreViewModel(name: $name)';
}


}

/// @nodoc
abstract mixin class _$MoreViewModelCopyWith<$Res> implements $MoreViewModelCopyWith<$Res> {
  factory _$MoreViewModelCopyWith(_MoreViewModel value, $Res Function(_MoreViewModel) _then) = __$MoreViewModelCopyWithImpl;
@override @useResult
$Res call({
 String? name
});




}
/// @nodoc
class __$MoreViewModelCopyWithImpl<$Res>
    implements _$MoreViewModelCopyWith<$Res> {
  __$MoreViewModelCopyWithImpl(this._self, this._then);

  final _MoreViewModel _self;
  final $Res Function(_MoreViewModel) _then;

/// Create a copy of MoreViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,}) {
  return _then(_MoreViewModel(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
