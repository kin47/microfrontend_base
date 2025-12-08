// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'invoice_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InvoiceDto {

@JsonKey(name: 'Id') int? get id;@JsonKey(name: 'InvoiceNumber') String? get invoiceNumber;@JsonKey(name: 'Amount') double? get amount;@JsonKey(name: 'Date') DateTime? get date;@JsonKey(name: 'Status') String? get status;@JsonKey(name: 'CustomerName') String? get customerName;
/// Create a copy of InvoiceDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InvoiceDtoCopyWith<InvoiceDto> get copyWith => _$InvoiceDtoCopyWithImpl<InvoiceDto>(this as InvoiceDto, _$identity);

  /// Serializes this InvoiceDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InvoiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.customerName, customerName) || other.customerName == customerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,amount,date,status,customerName);

@override
String toString() {
  return 'InvoiceDto(id: $id, invoiceNumber: $invoiceNumber, amount: $amount, date: $date, status: $status, customerName: $customerName)';
}


}

/// @nodoc
abstract mixin class $InvoiceDtoCopyWith<$Res>  {
  factory $InvoiceDtoCopyWith(InvoiceDto value, $Res Function(InvoiceDto) _then) = _$InvoiceDtoCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'InvoiceNumber') String? invoiceNumber,@JsonKey(name: 'Amount') double? amount,@JsonKey(name: 'Date') DateTime? date,@JsonKey(name: 'Status') String? status,@JsonKey(name: 'CustomerName') String? customerName
});




}
/// @nodoc
class _$InvoiceDtoCopyWithImpl<$Res>
    implements $InvoiceDtoCopyWith<$Res> {
  _$InvoiceDtoCopyWithImpl(this._self, this._then);

  final InvoiceDto _self;
  final $Res Function(InvoiceDto) _then;

/// Create a copy of InvoiceDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? invoiceNumber = freezed,Object? amount = freezed,Object? date = freezed,Object? status = freezed,Object? customerName = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InvoiceDto].
extension InvoiceDtoPatterns on InvoiceDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InvoiceDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InvoiceDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InvoiceDto value)  $default,){
final _that = this;
switch (_that) {
case _InvoiceDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InvoiceDto value)?  $default,){
final _that = this;
switch (_that) {
case _InvoiceDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'InvoiceNumber')  String? invoiceNumber, @JsonKey(name: 'Amount')  double? amount, @JsonKey(name: 'Date')  DateTime? date, @JsonKey(name: 'Status')  String? status, @JsonKey(name: 'CustomerName')  String? customerName)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InvoiceDto() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.amount,_that.date,_that.status,_that.customerName);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'InvoiceNumber')  String? invoiceNumber, @JsonKey(name: 'Amount')  double? amount, @JsonKey(name: 'Date')  DateTime? date, @JsonKey(name: 'Status')  String? status, @JsonKey(name: 'CustomerName')  String? customerName)  $default,) {final _that = this;
switch (_that) {
case _InvoiceDto():
return $default(_that.id,_that.invoiceNumber,_that.amount,_that.date,_that.status,_that.customerName);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'Id')  int? id, @JsonKey(name: 'InvoiceNumber')  String? invoiceNumber, @JsonKey(name: 'Amount')  double? amount, @JsonKey(name: 'Date')  DateTime? date, @JsonKey(name: 'Status')  String? status, @JsonKey(name: 'CustomerName')  String? customerName)?  $default,) {final _that = this;
switch (_that) {
case _InvoiceDto() when $default != null:
return $default(_that.id,_that.invoiceNumber,_that.amount,_that.date,_that.status,_that.customerName);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InvoiceDto extends InvoiceDto {
   _InvoiceDto({@JsonKey(name: 'Id') this.id, @JsonKey(name: 'InvoiceNumber') this.invoiceNumber, @JsonKey(name: 'Amount') this.amount, @JsonKey(name: 'Date') this.date, @JsonKey(name: 'Status') this.status, @JsonKey(name: 'CustomerName') this.customerName}): super._();
  factory _InvoiceDto.fromJson(Map<String, dynamic> json) => _$InvoiceDtoFromJson(json);

@override@JsonKey(name: 'Id') final  int? id;
@override@JsonKey(name: 'InvoiceNumber') final  String? invoiceNumber;
@override@JsonKey(name: 'Amount') final  double? amount;
@override@JsonKey(name: 'Date') final  DateTime? date;
@override@JsonKey(name: 'Status') final  String? status;
@override@JsonKey(name: 'CustomerName') final  String? customerName;

/// Create a copy of InvoiceDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InvoiceDtoCopyWith<_InvoiceDto> get copyWith => __$InvoiceDtoCopyWithImpl<_InvoiceDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InvoiceDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InvoiceDto&&(identical(other.id, id) || other.id == id)&&(identical(other.invoiceNumber, invoiceNumber) || other.invoiceNumber == invoiceNumber)&&(identical(other.amount, amount) || other.amount == amount)&&(identical(other.date, date) || other.date == date)&&(identical(other.status, status) || other.status == status)&&(identical(other.customerName, customerName) || other.customerName == customerName));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,invoiceNumber,amount,date,status,customerName);

@override
String toString() {
  return 'InvoiceDto(id: $id, invoiceNumber: $invoiceNumber, amount: $amount, date: $date, status: $status, customerName: $customerName)';
}


}

/// @nodoc
abstract mixin class _$InvoiceDtoCopyWith<$Res> implements $InvoiceDtoCopyWith<$Res> {
  factory _$InvoiceDtoCopyWith(_InvoiceDto value, $Res Function(_InvoiceDto) _then) = __$InvoiceDtoCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'Id') int? id,@JsonKey(name: 'InvoiceNumber') String? invoiceNumber,@JsonKey(name: 'Amount') double? amount,@JsonKey(name: 'Date') DateTime? date,@JsonKey(name: 'Status') String? status,@JsonKey(name: 'CustomerName') String? customerName
});




}
/// @nodoc
class __$InvoiceDtoCopyWithImpl<$Res>
    implements _$InvoiceDtoCopyWith<$Res> {
  __$InvoiceDtoCopyWithImpl(this._self, this._then);

  final _InvoiceDto _self;
  final $Res Function(_InvoiceDto) _then;

/// Create a copy of InvoiceDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? invoiceNumber = freezed,Object? amount = freezed,Object? date = freezed,Object? status = freezed,Object? customerName = freezed,}) {
  return _then(_InvoiceDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int?,invoiceNumber: freezed == invoiceNumber ? _self.invoiceNumber : invoiceNumber // ignore: cast_nullable_to_non_nullable
as String?,amount: freezed == amount ? _self.amount : amount // ignore: cast_nullable_to_non_nullable
as double?,date: freezed == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as DateTime?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,customerName: freezed == customerName ? _self.customerName : customerName // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
