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

import '../data/datasource/remote/api/product_api.dart' as _i1036;
import '../data/repository/product_repository_impl.dart' as _i413;
import '../domain/repository/product_repository.dart' as _i27;
import '../domain/usecase/impl/get_product_use_case_impl.dart' as _i603;
import '../domain/usecase/interface/get_product_use_case.dart' as _i608;
import '../presentation/more/bloc/more_bloc.dart' as _i954;
import '../presentation/product/cubit/product_cubit.dart' as _i788;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.factory<_i954.MoreBloc>(() => _i954.MoreBloc());
  gh.factory<_i1036.ProductApi>(() => _i1036.ProductApi(gh<_i552.Dio>()));
  gh.factory<_i27.ProductRepository>(
    () => _i413.ProductRepositoryImpl(gh<_i1036.ProductApi>()),
  );
  gh.factory<_i608.GetProductUseCase>(
    () => _i603.GetProductUseCaseImpl(gh<_i27.ProductRepository>()),
  );
  gh.factory<_i788.ProductCubit>(
    () => _i788.ProductCubit(gh<_i608.GetProductUseCase>()),
  );
  return getIt;
}
