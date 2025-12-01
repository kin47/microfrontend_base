import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_base_application/application_event.dart';

const flutterApplicationChannelName = "com.example.flutter_base_application";
const _methodChannel = MethodChannel(flutterApplicationChannelName);

@pragma('vm:entry-point')
Future<void> setup() async {
  DartPluginRegistrant.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  _methodChannel.setMethodCallHandler(handleMethodCall);
}


Future<dynamic> handleMethodCall(MethodCall call) async {
  switch(call.method) {
    case ApplicationEvent.getAuthToken:
      debugPrint('ApplicationEvent.getAuthToken called: ${call.arguments}');
    case ApplicationEvent.updateAuthToken:
      debugPrint('ApplicationEvent.updateAuthToken called: ${call.arguments}');
    default:
      debugPrint('Unknown method called: ${call.method}');
  }
}
