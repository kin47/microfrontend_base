// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter_base_libraries/flutter_libraries.dart' as _i552;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasource/remote/api/invoice_api.dart' as _i1047;
import '../data/datasource/remote/api/product_api.dart' as _i1036;
import '../data/repository/invoice_repository_impl.dart' as _i174;
import '../data/repository/product_repository_impl.dart' as _i413;
import '../domain/repository/invoice_repository.dart' as _i232;
import '../domain/repository/product_repository.dart' as _i27;
import '../domain/usecase/impl/get_invoice_use_case_impl.dart' as _i636;
import '../domain/usecase/impl/get_product_use_case_impl.dart' as _i603;
import '../domain/usecase/interface/get_invoice_use_case.dart' as _i411;
import '../domain/usecase/interface/get_product_use_case.dart' as _i608;
import '../presentation/invoice/bloc/invoice_bloc.dart' as _i662;
import '../presentation/more/cubit/more_cubit.dart' as _i487;
import '../presentation/product/bloc/product_bloc.dart' as _i628;
import '../routes/man_route.dart' as _i191;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i487.MoreCubit>(() => _i487.MoreCubit());
  gh.lazySingleton<_i191.ManRoute>(() => _i191.MasterLayoutRouteImpl());
  gh.factory<_i1047.InvoiceApi>(() => _i1047.InvoiceApi(gh<_i552.Dio>()));
  gh.factory<_i1036.ProductApi>(() => _i1036.ProductApi(gh<_i552.Dio>()));
  gh.factory<_i232.InvoiceRepository>(
    () => _i174.InvoiceRepositoryImpl(gh<_i1047.InvoiceApi>()),
  );
  gh.factory<_i27.ProductRepository>(
    () => _i413.ProductRepositoryImpl(gh<_i1036.ProductApi>()),
  );
  gh.factory<_i411.GetInvoiceUseCase>(
    () => _i636.GetInvoiceUseCaseImpl(gh<_i232.InvoiceRepository>()),
  );
  gh.factory<_i662.InvoiceBloc>(
    () => _i662.InvoiceBloc(gh<_i411.GetInvoiceUseCase>()),
  );
  gh.factory<_i608.GetProductUseCase>(
    () => _i603.GetProductUseCaseImpl(gh<_i27.ProductRepository>()),
  );
  gh.factory<_i628.ProductBloc>(
    () => _i628.ProductBloc(gh<_i608.GetProductUseCase>()),
  );
  return getIt;
}
