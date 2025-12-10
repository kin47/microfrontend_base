import 'package:flutter_base_libraries/flutter_libraries.dart';

import 'di.config.dart';

final GetIt getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies({String env = Environment.dev}) {
  getIt.registerLazySingleton<Dio>(
    () => Dio(),
  );
  $initGetIt(getIt, environment: env);
}
