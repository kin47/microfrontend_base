import 'package:flutter_base_application/domain/enum/core_tab.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:man_module/domain/entity/product_entity.dart';

part 'host_screen_view_model.freezed.dart';

@freezed
abstract class HostScreenViewModel with _$HostScreenViewModel {
  const HostScreenViewModel._();

  const factory HostScreenViewModel({
    @Default(CoreTab.home) CoreTab currentTab,
  }) = _HostScreenViewModel;
}