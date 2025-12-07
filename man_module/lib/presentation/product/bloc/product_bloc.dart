import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:man_module/domain/usecase/interface/get_product_use_case.dart';
import 'package:man_module/presentation/product/view_model/product_screen_view_model.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final GetProductUseCase _getProductUseCase;

  ProductBloc(this._getProductUseCase) : super(const ProductState.primary()) {
    on<_Started>((event, emit) {
      // TODO: implement event handler
    });
    on<_FetchData>((event, emit) => _onFetchData(event, emit));
  }

  Future<void> _onFetchData(
      _FetchData event, Emitter<ProductState> emit) async {
    emit(ProductState.loading(viewModel: state.viewModel));
    final result = await _getProductUseCase.call();
    result.fold(
      (exception) {
        emit(ProductState.error(
            viewModel: state.viewModel, exception: exception));
      },
      (products) {
        final updatedViewModel =
            state.viewModel.copyWith(products: products);
        emit(ProductState.primary(viewModel: updatedViewModel));
      },
    );
  }
}
