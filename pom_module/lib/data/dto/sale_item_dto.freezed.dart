// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sale_item_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SaleItemDto {

@JsonKey(name: 'Id') int? get id;@JsonKey(name: 'Name') String? get name;@JsonKey(name: 'Description') String? get description;@JsonKey(name: 'Price') double? get price;@JsonKey(name: 'Quantity') int? get quantity;@JsonKey(name: 'ImageUrl') String? get imageUrl;
/// Create a copy of SaleItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SaleItemDtoCopyWith<SaleItemDto> get copyWith => _$SaleItemDtoCopyWithImpl<SaleItemDto>(this as SaleItemDto, _$identity);

  /// Serializes this SaleItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SaleItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,quantity,imageUrl);

@override
String toString() {
  return 'SaleItemDto(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class $SaleItemDtoCopyWith<$Res>  {
  factory $SaleItemDtoCopyWith(SaleItemDto value, $Res Function(SaleItemDto) _then) = _$SaleItemDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'Quantity') int? quantity,@JsonKey(name: 'ImageUrl') String? imageUrl
});




}
/// @nodoc
class _$SaleItemDtoCopyWithImpl<$Res>
    implements $SaleItemDtoCopyWith<$Res> {
  _$SaleItemDtoCopyWithImpl(this._self, this._then);

  final SaleItemDto _self;
  final $Res Function(SaleItemDto) _then;

/// Create a copy of SaleItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? quantity = freezed,Object? imageUrl = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SaleItemDto].
extension SaleItemDtoPatterns on SaleItemDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SaleItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SaleItemDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SaleItemDto value)  $default,){
final _that = this;
switch (_that) {
case _SaleItemDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SaleItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _SaleItemDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Quantity')  int? quantity, @JsonKey(name: 'ImageUrl')  String? imageUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SaleItemDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.quantity,_that.imageUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Quantity')  int? quantity, @JsonKey(name: 'ImageUrl')  String? imageUrl)  $default,) {final _that = this;
switch (_that) {
case _SaleItemDto():
return $default(_that.id,_that.name,_that.description,_that.price,_that.quantity,_that.imageUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'Name')  String? name, @JsonKey(name: 'Description')  String? description, @JsonKey(name: 'Price')  double? price, @JsonKey(name: 'Quantity')  int? quantity, @JsonKey(name: 'ImageUrl')  String? imageUrl)?  $default,) {final _that = this;
switch (_that) {
case _SaleItemDto() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.price,_that.quantity,_that.imageUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SaleItemDto extends SaleItemDto {
   _SaleItemDto({@JsonKey(name: 'Id') this.id, @JsonKey(name: 'Name') this.name, @JsonKey(name: 'Description') this.description, @JsonKey(name: 'Price') this.price, @JsonKey(name: 'Quantity') this.quantity, @JsonKey(name: 'ImageUrl') this.imageUrl}): super._();
  factory _SaleItemDto.fromJson(Map<String, dynamic> json) => _$SaleItemDtoFromJson(json);

@override@JsonKey(name: 'Id') final  int? id;
@override@JsonKey(name: 'Name') final  String? name;
@override@JsonKey(name: 'Description') final  String? description;
@override@JsonKey(name: 'Price') final  double? price;
@override@JsonKey(name: 'Quantity') final  int? quantity;
@override@JsonKey(name: 'ImageUrl') final  String? imageUrl;

/// Create a copy of SaleItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SaleItemDtoCopyWith<_SaleItemDto> get copyWith => __$SaleItemDtoCopyWithImpl<_SaleItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SaleItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SaleItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.quantity, quantity) || other.quantity == quantity)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,description,price,quantity,imageUrl);

@override
String toString() {
  return 'SaleItemDto(id: $id, name: $name, description: $description, price: $price, quantity: $quantity, imageUrl: $imageUrl)';
}


}

/// @nodoc
abstract mixin class _$SaleItemDtoCopyWith<$Res> implements $SaleItemDtoCopyWith<$Res> {
  factory _$SaleItemDtoCopyWith(_SaleItemDto value, $Res Function(_SaleItemDto) _then) = __$SaleItemDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'Name') String? name,@JsonKey(name: 'Description') String? description,@JsonKey(name: 'Price') double? price,@JsonKey(name: 'Quantity') int? quantity,@JsonKey(name: 'ImageUrl') String? imageUrl
});




}
/// @nodoc
class __$SaleItemDtoCopyWithImpl<$Res>
    implements _$SaleItemDtoCopyWith<$Res> {
  __$SaleItemDtoCopyWithImpl(this._self, this._then);

  final _SaleItemDto _self;
  final $Res Function(_SaleItemDto) _then;

/// Create a copy of SaleItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? name = freezed,Object? description = freezed,Object? price = freezed,Object? quantity = freezed,Object? imageUrl = freezed,}) {
  return _then(_SaleItemDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,quantity: freezed == quantity ? _self.quantity : quantity // ignore: cast_nullable_to_non_nullable
as int?,imageUrl: freezed == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
