import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:pom_module/domain/usecase/interface/get_sale_items_use_case.dart';
import 'package:pom_module/presentation/sale/view_model/sale_screen_view_model.dart';

part 'sale_state.dart';
part 'sale_cubit.freezed.dart';

@injectable
class SaleCubit extends Cubit<SaleState> {
  final GetSaleItemsUseCase _getSaleItemsUseCase;

  SaleCubit(this._getSaleItemsUseCase) : super(const SaleState.initial()) {
    loadItems();
  }

  Future<void> loadItems({String? searchQuery}) async {
    emit(SaleState.loading(
      viewModel: state.viewModel.copyWith(
        searchQuery: searchQuery ?? '',
        isSearching: searchQuery != null && searchQuery.isNotEmpty,
      ),
    ));

    final result = await _getSaleItemsUseCase.call(searchQuery: searchQuery);

    result.fold(
      (exception) {
        emit(SaleState.error(
          viewModel: state.viewModel,
          exception: exception,
        ));
      },
      (items) {
        emit(SaleState.loaded(
          viewModel: state.viewModel.copyWith(
            items: items,
            searchQuery: searchQuery ?? '',
            isSearching: false,
          ),
        ));
      },
    );
  }

  void searchItems(String query) {
    if (query.isEmpty) {
      loadItems();
    } else {
      loadItems(searchQuery: query);
    }
  }
}

