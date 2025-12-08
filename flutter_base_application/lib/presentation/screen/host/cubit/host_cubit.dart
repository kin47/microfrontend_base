import 'package:flutter_base_application/presentation/screen/host/view_model/host_screen_view_model.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';

part 'host_state.dart';
part 'host_cubit.freezed.dart';

@injectable
class HostCubit extends Cubit<HostState> {
  HostCubit() : super(const HostState.initial());
}
