## About
- This is a Base Microfrontend Project i setup
- It started from Native Android/iOS
- After Login, all flows will be written in Flutter
- Until now: Flutter Contains 3 sub-module

## Language/Framework Used
- Android: Java, Kotlin
- iOS: Swift, Objective-C
- Flutter: Dart

## Environment:
### Android
- Min SDK: 24
- Target SDK: 36
- Android Gradle Plugin (AGP): 8.9.1
- Android Studio: Must run on Android Studio that support AGP 8.9.1 or above (Meerkat or above)
  https://developer.android.com/studio/releases?hl=vi#android_gradle_plugin_and_android_studio_compatibility

## Flutter
- Version: 3.38.3

## iOS
- To be determined

## Flutter Add To Native App Instructions
- https://docs.flutter.dev/add-to-app/android/project-setup
- Android: Using Module Source Code, this way we will be able to debug Flutter module using Flutter Attach, also quick update the Flutter UI/logic changes
- iOS: To be determined
- You can run the Flutter module directly for easier debugging

## Project Structure
- microfrontend_android_host: Where to start the project, contains Login Screen, and other modules that needs native handling
- flutter_base_application: Handle the core of the Flutter, draw the tab bar, navigates between modules,...
- ui_design_system: Define the design, contains the design of default button, theme, textStyle, etc,..
- flutter_base_libraries: Define all the flutter packages needed for this microfrontend project
- flutter_core: Define the core logic of the Flutter module, like Exception, Logger, Storage,...
- pom_module: For the POS on Man module, this module will handle the sale/order flow, and it support offline-first
- printer_module: This module will support the print and related settings
- man_module: This modules support the management product, other features,... and only support getting the data from Servers (APIs)