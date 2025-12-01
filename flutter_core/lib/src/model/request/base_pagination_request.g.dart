// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_pagination_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BasePaginationRequest _$BasePaginationRequestFromJson(
  Map<String, dynamic> json,
) => _BasePaginationRequest(
  page: (json['page'] as num).toInt(),
  limit: (json['limit'] as num?)?.toInt() ?? ApiConfig.limit,
);

Map<String, dynamic> _$BasePaginationRequestToJson(
  _BasePaginationRequest instance,
) => <String, dynamic>{'page': instance.page, 'limit': instance.limit};
