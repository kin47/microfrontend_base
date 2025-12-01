// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_pagination_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BasePaginationRequest {

 int get page; int get limit;
/// Create a copy of BasePaginationRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BasePaginationRequestCopyWith<BasePaginationRequest> get copyWith => _$BasePaginationRequestCopyWithImpl<BasePaginationRequest>(this as BasePaginationRequest, _$identity);

  /// Serializes this BasePaginationRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BasePaginationRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'BasePaginationRequest(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class $BasePaginationRequestCopyWith<$Res>  {
  factory $BasePaginationRequestCopyWith(BasePaginationRequest value, $Res Function(BasePaginationRequest) _then) = _$BasePaginationRequestCopyWithImpl;
@useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class _$BasePaginationRequestCopyWithImpl<$Res>
    implements $BasePaginationRequestCopyWith<$Res> {
  _$BasePaginationRequestCopyWithImpl(this._self, this._then);

  final BasePaginationRequest _self;
  final $Res Function(BasePaginationRequest) _then;

/// Create a copy of BasePaginationRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [BasePaginationRequest].
extension BasePaginationRequestPatterns on BasePaginationRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BasePaginationRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BasePaginationRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BasePaginationRequest value)  $default,){
final _that = this;
switch (_that) {
case _BasePaginationRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BasePaginationRequest value)?  $default,){
final _that = this;
switch (_that) {
case _BasePaginationRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BasePaginationRequest() when $default != null:
return $default(_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit)  $default,) {final _that = this;
switch (_that) {
case _BasePaginationRequest():
return $default(_that.page,_that.limit);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit)?  $default,) {final _that = this;
switch (_that) {
case _BasePaginationRequest() when $default != null:
return $default(_that.page,_that.limit);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _BasePaginationRequest implements BasePaginationRequest {
   _BasePaginationRequest({required this.page, this.limit = ApiConfig.limit});
  factory _BasePaginationRequest.fromJson(Map<String, dynamic> json) => _$BasePaginationRequestFromJson(json);

@override final  int page;
@override@JsonKey() final  int limit;

/// Create a copy of BasePaginationRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BasePaginationRequestCopyWith<_BasePaginationRequest> get copyWith => __$BasePaginationRequestCopyWithImpl<_BasePaginationRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BasePaginationRequestToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BasePaginationRequest&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit);

@override
String toString() {
  return 'BasePaginationRequest(page: $page, limit: $limit)';
}


}

/// @nodoc
abstract mixin class _$BasePaginationRequestCopyWith<$Res> implements $BasePaginationRequestCopyWith<$Res> {
  factory _$BasePaginationRequestCopyWith(_BasePaginationRequest value, $Res Function(_BasePaginationRequest) _then) = __$BasePaginationRequestCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit
});




}
/// @nodoc
class __$BasePaginationRequestCopyWithImpl<$Res>
    implements _$BasePaginationRequestCopyWith<$Res> {
  __$BasePaginationRequestCopyWithImpl(this._self, this._then);

  final _BasePaginationRequest _self;
  final $Res Function(_BasePaginationRequest) _then;

/// Create a copy of BasePaginationRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,}) {
  return _then(_BasePaginationRequest(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
