import 'package:flutter_base_libraries/flutter_libraries.dart';

import 'di.config.dart';

/// Use the shared default GetIt instance so external modules see the same
/// registrations (e.g. BaseLogger).
GetIt getIt = GetIt.instance..allowReassignment = true;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> initDI() async {
  final SharedPreferences sharedPreferences =
      await SharedPreferences.getInstance();
  getIt.registerLazySingleton<SharedPreferences>(() => sharedPreferences);
  $initGetIt(getIt);
}
