import 'package:flutter_base_libraries/flutter_libraries.dart';

part 'more_view_model.freezed.dart';

@freezed
abstract class MoreViewModel with _$MoreViewModel {
  const MoreViewModel._();
  
  const factory MoreViewModel({
    @Default('') String? name,
    @Default('en') String currentLocaleCode,
  }) = _MoreViewModel;
}