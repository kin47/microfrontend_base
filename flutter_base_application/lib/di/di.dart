import 'package:flutter_base_libraries/flutter_libraries.dart';

import 'di.config.dart';

GetIt getIt = GetIt.asNewInstance()..allowReassignment = true;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> initDI() async {
  await $initGetIt(getIt);
}
