# Flutter Integration Setup for iOS Host

This document explains how to set up Flutter integration in the iOS host application.

## Prerequisites

1. Flutter SDK installed
2. CocoaPods installed (`sudo gem install cocoapods`)
3. Xcode installed

## Setup Steps

### 1. Build Flutter Framework

Before running `pod install`, you need to build the Flutter framework:

```bash
cd ../flutter_base_application
flutter build ios-framework --output=../microfrontend_ios_host/Flutter
```

This will create the Flutter framework in the `Flutter` directory of the iOS host project.

### 2. Install CocoaPods Dependencies

```bash
cd microfrontend_ios_host
pod install
```

### 3. Open Workspace (Not Project)

Always open the `.xcworkspace` file, not the `.xcodeproj` file:

```bash
open microfrontend_ios_host.xcworkspace
```

### 4. Configure Build Settings

Follow the Flutter documentation to:
- Set up the LLDB Init File for debugging
- Configure local network privacy permissions for Debug builds
- Exclude arm64 architecture for simulator if needed (Apple Silicon Macs)

## How It Works

1. **Login Flow**: When a user successfully logs in via `LoginUIView`, the app automatically navigates to the Flutter view.

2. **Flutter Integration**: 
   - `FlutterHostViewController` manages the Flutter engine and method channel communication
   - `FlutterView` is a SwiftUI wrapper that can be used in SwiftUI views
   - The auth token is passed to Flutter via the method channel after login

3. **Method Channel**: 
   - Channel name: `com.example.flutter_base_application`
   - Methods: `getAuthToken`, `updateAuthToken`

## Troubleshooting

- If you see "Flutter framework not found", make sure you've built the framework first (step 1)
- If you see build errors, ensure you're opening the `.xcworkspace` file, not `.xcodeproj`
- For debugging issues, check the LLDB Init File configuration in Xcode scheme settings

