// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_screen_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SaleScreenViewModel {

 List<SaleItemEntity> get items; String get searchQuery; bool get isSearching;
/// Create a copy of SaleScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleScreenViewModelCopyWith<SaleScreenViewModel> get copyWith => _$SaleScreenViewModelCopyWithImpl<SaleScreenViewModel>(this as SaleScreenViewModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleScreenViewModel&&const DeepCollectionEquality().equals(other.items, items)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items),searchQuery,isSearching);

@override
String toString() {
  return 'SaleScreenViewModel(items: $items, searchQuery: $searchQuery, isSearching: $isSearching)';
}


}

/// @nodoc
abstract mixin class $SaleScreenViewModelCopyWith<$Res>  {
  factory $SaleScreenViewModelCopyWith(SaleScreenViewModel value, $Res Function(SaleScreenViewModel) _then) = _$SaleScreenViewModelCopyWithImpl;
@useResult
$Res call({
 List<SaleItemEntity> items, String searchQuery, bool isSearching
});




}
/// @nodoc
class _$SaleScreenViewModelCopyWithImpl<$Res>
    implements $SaleScreenViewModelCopyWith<$Res> {
  _$SaleScreenViewModelCopyWithImpl(this._self, this._then);

  final SaleScreenViewModel _self;
  final $Res Function(SaleScreenViewModel) _then;

/// Create a copy of SaleScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? searchQuery = null,Object? isSearching = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<SaleItemEntity>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleScreenViewModel].
extension SaleScreenViewModelPatterns on SaleScreenViewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleScreenViewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleScreenViewModel value)  $default,){
final _that = this;
switch (_that) {
case _SaleScreenViewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleScreenViewModel value)?  $default,){
final _that = this;
switch (_that) {
case _SaleScreenViewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<SaleItemEntity> items,  String searchQuery,  bool isSearching)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleScreenViewModel() when $default != null:
return $default(_that.items,_that.searchQuery,_that.isSearching);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<SaleItemEntity> items,  String searchQuery,  bool isSearching)  $default,) {final _that = this;
switch (_that) {
case _SaleScreenViewModel():
return $default(_that.items,_that.searchQuery,_that.isSearching);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<SaleItemEntity> items,  String searchQuery,  bool isSearching)?  $default,) {final _that = this;
switch (_that) {
case _SaleScreenViewModel() when $default != null:
return $default(_that.items,_that.searchQuery,_that.isSearching);case _:
  return null;

}
}

}

/// @nodoc


class _SaleScreenViewModel extends SaleScreenViewModel {
  const _SaleScreenViewModel({final  List<SaleItemEntity> items = const [], this.searchQuery = '', this.isSearching = false}): _items = items,super._();
  

 final  List<SaleItemEntity> _items;
@override@JsonKey() List<SaleItemEntity> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  bool isSearching;

/// Create a copy of SaleScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleScreenViewModelCopyWith<_SaleScreenViewModel> get copyWith => __$SaleScreenViewModelCopyWithImpl<_SaleScreenViewModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleScreenViewModel&&const DeepCollectionEquality().equals(other._items, _items)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),searchQuery,isSearching);

@override
String toString() {
  return 'SaleScreenViewModel(items: $items, searchQuery: $searchQuery, isSearching: $isSearching)';
}


}

/// @nodoc
abstract mixin class _$SaleScreenViewModelCopyWith<$Res> implements $SaleScreenViewModelCopyWith<$Res> {
  factory _$SaleScreenViewModelCopyWith(_SaleScreenViewModel value, $Res Function(_SaleScreenViewModel) _then) = __$SaleScreenViewModelCopyWithImpl;
@override @useResult
$Res call({
 List<SaleItemEntity> items, String searchQuery, bool isSearching
});




}
/// @nodoc
class __$SaleScreenViewModelCopyWithImpl<$Res>
    implements _$SaleScreenViewModelCopyWith<$Res> {
  __$SaleScreenViewModelCopyWithImpl(this._self, this._then);

  final _SaleScreenViewModel _self;
  final $Res Function(_SaleScreenViewModel) _then;

/// Create a copy of SaleScreenViewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? searchQuery = null,Object? isSearching = null,}) {
  return _then(_SaleScreenViewModel(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<SaleItemEntity>,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
