import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/domain/usecase/interface/get_product_use_case.dart';
import 'package:man_module/presentation/product/view_model/product_screen_view_model.dart';

part 'product_state.dart';
part 'product_cubit.freezed.dart';

@injectable
class ProductCubit extends Cubit<ProductState> {
  final GetProductUseCase _getProductUseCase;

  ProductCubit(this._getProductUseCase) : super(ProductState.primary());

  Future<void> loadProducts() async {
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
