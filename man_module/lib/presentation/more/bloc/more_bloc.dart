import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/presentation/more/view_model/more_view_model.dart';

part 'more_event.dart';
part 'more_state.dart';
part 'more_bloc.freezed.dart';

@injectable
class MoreBloc extends Bloc<MoreEvent, MoreState> {
  MoreBloc() : super(const MoreState.initial()) {
    on<MoreEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
