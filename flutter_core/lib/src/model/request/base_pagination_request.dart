import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/src/constants/api_config.dart';
part 'base_pagination_request.freezed.dart';
part 'base_pagination_request.g.dart';

@freezed
abstract class BasePaginationRequest with _$BasePaginationRequest {
  factory BasePaginationRequest({
    required int page,
    @Default(ApiConfig.limit) int limit,
  }) = _BasePaginationRequest;

  factory BasePaginationRequest.fromJson(Map<String, dynamic> json) =>
      _$BasePaginationRequestFromJson(json);
}