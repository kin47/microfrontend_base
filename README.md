## About
- This is a Base Microfrontend Project i setup
- It started from Native Android/iOS
- After Login, all flows will be written in Flutter
- Until now: Flutter Contains 3 sub-module

## Language/Framework Used
- Android: Kotlin (Jetpack Compose)
- iOS: Swift (SwiftUI/UIKit)
- Flutter: Dart (Supports Preview)

## Environment:
### Android
- Min SDK: 24
- Target SDK: 36
- Android Gradle Plugin (AGP): 8.9.1
- Android Studio: Must run on Android Studio that support AGP 8.9.1 or above (Meerkat or above)
  https://developer.android.com/studio/releases?hl=vi#android_gradle_plugin_and_android_studio_compatibility

## iOS
- Minimum iOS Version: 13.0
- XCode: my default setup is 15, but i believe it can run on any version that supports iOS 13+

## Flutter
- Version: 3.38 (3.38.3 in my setup)

## Flutter Add To Native App Instructions
### Android: 
- Link: https://docs.flutter.dev/add-to-app/android/project-setup
- Using Module Source Code, this way we will be able to debug Flutter module using Flutter Attach, also quick update the Flutter UI/logic changes

### iOS: 
- Link: https://docs.flutter.dev/add-to-app/ios/project-setup
- Using CocoaPods as a recommended approach based on docs.flutter.dev
- Able to debug Flutter module using Flutter Attach, also quick update the Flutter UI/logic changes

## Melos
### About
- This is a library that supports managing mono-repo gracefully
- Melos also works great on CI/CD environments to help automate complex tasks and challenges.

### Current Version
7.3.0

### Documentation
- Pub.dev: https://pub.dev/packages/melos
- Intaverse: https://melos.invertase.dev/~melos-latest

### Setup melos
- dart pub global activate melos
- echo 'export PATH="$PATH":"$HOME/.pub-cache/bin"' >> ~/.zshrc
- source ~/.zshrc

## Project Structure
- microfrontend_android_host: Where to start the project from Native Android, contains Login Screen, and other modules that needs native handling
- microfrontend_ios_host: Where to start the project from Native iOS, contains Login Screen, and other modules that needs native handling
- flutter_base_application: Handle the starting point of the Flutter app, draw the tab bar, navigates between modules,...
- ui_design_system: Define the design, contains the design of default button, theme, textStyle, etc,..
- flutter_base_libraries: Define all the flutter packages needed for this microfrontend project
- flutter_core: Define the core logic of the Flutter module, like Exception, Logger, Storage,...
- pom_module: For the POS on Man module, this module will handle the sale/order flow, and it support offline-first
- printer_module: This module will support the print and related settings
- man_module: This modules support the management product, other features,... and only support getting the data from Servers (APIs)