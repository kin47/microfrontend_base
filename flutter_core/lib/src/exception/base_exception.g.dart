// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_exception.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BaseDefaultException _$BaseDefaultExceptionFromJson(
  Map<String, dynamic> json,
) => _BaseDefaultException(
  message: json['message'] as String? ?? '',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$BaseDefaultExceptionToJson(
  _BaseDefaultException instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};

ServerException _$ServerExceptionFromJson(Map<String, dynamic> json) =>
    ServerException(
      message: json['message'] as String? ?? '',
      statusCode: (json['statusCode'] as num?)?.toInt() ?? -1,
      errorCode: json['errorCode'] as String? ?? '',
      errorType: json['errorType'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$ServerExceptionToJson(ServerException instance) =>
    <String, dynamic>{
      'message': instance.message,
      'statusCode': instance.statusCode,
      'errorCode': instance.errorCode,
      'errorType': instance.errorType,
      'runtimeType': instance.$type,
    };

NoInternetException _$NoInternetExceptionFromJson(Map<String, dynamic> json) =>
    NoInternetException(
      message: json['message'] as String? ?? '',
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$NoInternetExceptionToJson(
  NoInternetException instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};

ForceLogoutException _$ForceLogoutExceptionFromJson(
  Map<String, dynamic> json,
) => ForceLogoutException(
  message: json['message'] as String? ?? '',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ForceLogoutExceptionToJson(
  ForceLogoutException instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};

ForceUpgradeApplication _$ForceUpgradeApplicationFromJson(
  Map<String, dynamic> json,
) => ForceUpgradeApplication(
  message: json['message'] as String? ?? '',
  $type: json['runtimeType'] as String?,
);

Map<String, dynamic> _$ForceUpgradeApplicationToJson(
  ForceUpgradeApplication instance,
) => <String, dynamic>{
  'message': instance.message,
  'runtimeType': instance.$type,
};
