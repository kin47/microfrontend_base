// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseListData<T> _$BaseListDataFromJson<T>(
  Map json,
  T Function(Object? json) fromJsonT,
) => BaseListData<T>(
  data: (json['data'] as List<dynamic>?)?.map(fromJsonT).toList(),
  status: (json['status'] as num?)?.toInt(),
);

Map<String, dynamic> _$BaseListDataToJson<T>(
  BaseListData<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'data': instance.data?.map(toJsonT).toList(),
  'status': instance.status,
};
