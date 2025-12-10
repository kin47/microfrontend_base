import 'package:flutter/material.dart';
import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/presentation/more/view_model/more_view_model.dart';

part 'more_state.dart';
part 'more_cubit.freezed.dart';

@injectable
class MoreCubit extends Cubit<MoreState> {
  MoreCubit() : super(const MoreState.primary());

  void changeLanguage(Locale locale) {
    final updatedViewModel = state.viewModel.copyWith(currentLocaleCode: locale.languageCode);
    emit(MoreState.primary(viewModel: updatedViewModel));
  }

  Future<void> logOut() async {
    emit(MoreState.loading(viewModel: state.viewModel));
    await Future.delayed(const Duration(seconds: 2)); // Simulate a logout delay
    emit(MoreState.loggedOut());
  }
}
