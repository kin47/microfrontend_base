// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'host_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HostScreenViewModel {

 CoreTab get currentTab;
/// Create a copy of HostScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HostScreenViewModelCopyWith<HostScreenViewModel> get copyWith => _$HostScreenViewModelCopyWithImpl<HostScreenViewModel>(this as HostScreenViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HostScreenViewModel&&(identical(other.currentTab, currentTab) || other.currentTab == currentTab));
}


@override
int get hashCode => Object.hash(runtimeType,currentTab);

@override
String toString() {
  return 'HostScreenViewModel(currentTab: $currentTab)';
}


}

/// @nodoc
abstract mixin class $HostScreenViewModelCopyWith<$Res>  {
  factory $HostScreenViewModelCopyWith(HostScreenViewModel value, $Res Function(HostScreenViewModel) _then) = _$HostScreenViewModelCopyWithImpl;
@useResult
$Res call({
 CoreTab currentTab
});




}
/// @nodoc
class _$HostScreenViewModelCopyWithImpl<$Res>
    implements $HostScreenViewModelCopyWith<$Res> {
  _$HostScreenViewModelCopyWithImpl(this._self, this._then);

  final HostScreenViewModel _self;
  final $Res Function(HostScreenViewModel) _then;

/// Create a copy of HostScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentTab = null,}) {
  return _then(_self.copyWith(
currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as CoreTab,
  ));
}

}


/// Adds pattern-matching-related methods to [HostScreenViewModel].
extension HostScreenViewModelPatterns on HostScreenViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HostScreenViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HostScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HostScreenViewModel value)  $default,){
final _that = this;
switch (_that) {
case _HostScreenViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HostScreenViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _HostScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CoreTab currentTab)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HostScreenViewModel() when $default != null:
return $default(_that.currentTab);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CoreTab currentTab)  $default,) {final _that = this;
switch (_that) {
case _HostScreenViewModel():
return $default(_that.currentTab);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CoreTab currentTab)?  $default,) {final _that = this;
switch (_that) {
case _HostScreenViewModel() when $default != null:
return $default(_that.currentTab);case _:
  return null;

}
}

}

/// @nodoc


class _HostScreenViewModel extends HostScreenViewModel {
  const _HostScreenViewModel({this.currentTab = CoreTab.home}): super._();
  

@override@JsonKey() final  CoreTab currentTab;

/// Create a copy of HostScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HostScreenViewModelCopyWith<_HostScreenViewModel> get copyWith => __$HostScreenViewModelCopyWithImpl<_HostScreenViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HostScreenViewModel&&(identical(other.currentTab, currentTab) || other.currentTab == currentTab));
}


@override
int get hashCode => Object.hash(runtimeType,currentTab);

@override
String toString() {
  return 'HostScreenViewModel(currentTab: $currentTab)';
}


}

/// @nodoc
abstract mixin class _$HostScreenViewModelCopyWith<$Res> implements $HostScreenViewModelCopyWith<$Res> {
  factory _$HostScreenViewModelCopyWith(_HostScreenViewModel value, $Res Function(_HostScreenViewModel) _then) = __$HostScreenViewModelCopyWithImpl;
@override @useResult
$Res call({
 CoreTab currentTab
});




}
/// @nodoc
class __$HostScreenViewModelCopyWithImpl<$Res>
    implements _$HostScreenViewModelCopyWith<$Res> {
  __$HostScreenViewModelCopyWithImpl(this._self, this._then);

  final _HostScreenViewModel _self;
  final $Res Function(_HostScreenViewModel) _then;

/// Create a copy of HostScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentTab = null,}) {
  return _then(_HostScreenViewModel(
currentTab: null == currentTab ? _self.currentTab : currentTab // ignore: cast_nullable_to_non_nullable
as CoreTab,
  ));
}


}

// dart format on
