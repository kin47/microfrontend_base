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

import '../application/module_registration/flutter_base_module_registration.dart'
    as _i110;
import '../module_definition.dart' as _i1042;
import '../presentation/route/route.dart' as _i722;

// initializes the registration of main-scope dependencies inside of GetIt
_i174.GetIt $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  gh.lazySingleton<_i110.FlutterBaseModuleRegistration>(
    () => _i110.FlutterBaseModuleRegistrationImpl(),
  );
  gh.lazySingleton<_i722.FlutterBaseApplicationRoute>(
    () => _i722.FlutterBaseApplicationRouteImpl(
      gh<_i110.FlutterBaseModuleRegistration>(),
    ),
  );
  gh.lazySingleton<_i1042.ModuleDefinition>(
    () => _i1042.ModuleDefinitionImpl(),
  );
  return getIt;
}
