import 'package:flutter_base_libraries/flutter_libraries.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:man_module/man_module.dart';

///______________________DEFINE MODULES HERE_____________________________
///
List<BaseApplicationModule> _moduleDefinitions = <BaseApplicationModule>[
  ManModule(),
];

/// Where you can get a list of defined modules.
///
abstract class ModuleDefinition {
  List<BaseApplicationModule> get modules;
}

@LazySingleton(as: ModuleDefinition)
class ModuleDefinitionImpl implements ModuleDefinition {
  @override
  List<BaseApplicationModule> get modules => _moduleDefinitions;
}
