import 'package:flutter_base_libraries/flutter_libraries.dart';

part 'host_state.dart';
part 'host_cubit.freezed.dart';

@injectable
class HostCubit extends Cubit<HostState> {
  HostCubit() : super(const HostState.initial());
}
