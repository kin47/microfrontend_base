// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../data/datasource/local/sale_store.dart' as _i194;
import '../data/repository/sale_repository_impl.dart' as _i765;
import '../domain/repository/sale_repository.dart' as _i602;
import '../domain/usecase/impl/get_sale_items_use_case_impl.dart' as _i497;
import '../domain/usecase/interface/get_sale_items_use_case.dart' as _i245;
import '../presentation/sale/cubit/sale_cubit.dart' as _i597;
import '../routes/pom_route.dart' as _i628;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i194.SaleStore>(() => _i194.SaleStore());
  gh.factory<_i597.SaleCubit>(
    () => _i597.SaleCubit(gh<_i245.GetSaleItemsUseCase>()),
  );
  gh.factory<_i765.SaleRepositoryImpl>(
    () => _i765.SaleRepositoryImpl(gh<_i194.SaleStore>()),
  );
  gh.lazySingleton<_i628.PomRoute>(() => _i628.PomRouteImpl());
  gh.factory<_i497.GetSaleItemsUseCaseImpl>(
    () => _i497.GetSaleItemsUseCaseImpl(gh<_i602.SaleRepository>()),
  );
  return getIt;
}
