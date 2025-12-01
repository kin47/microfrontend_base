package com.example.microfrontendandroid.flutter

import android.content.Context
import com.example.microfrontendandroid.flutter.enums.MicroFrontendFlutterEvent
import com.google.gson.Gson
import io.flutter.FlutterInjector
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.FlutterEngineCache
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

class FlutterCoreUtils {
    companion object {
        const val coreEngineId = "come.example.flutter_base_application.engine"
        private var methodChannel: MethodChannel? = null
        private const val channelName = "com.example.flutter_base_application"

        @JvmStatic
        fun initFlutterEngine(context: Context) {
            val engine = FlutterEngine(context)

            engine.dartExecutor.executeDartEntrypoint(
                DartExecutor.DartEntrypoint(
                    FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                    "package:flutter_base_application/main.dart",
                    "startApplication"
                )
            )

            FlutterEngineCache.getInstance().put(coreEngineId, engine)

            methodChannel =
                FlutterEngineCache.getInstance().get(coreEngineId)?.dartExecutor?.let {
                    MethodChannel(it.binaryMessenger, channelName)
                }

            methodChannel?.setMethodCallHandler { _: MethodCall, _: MethodChannel.Result -> }
        }

        @JvmStatic
        fun updateToken(context: Context) {
            methodChannel?.invokeMethod(
                MicroFrontendFlutterEvent.UPDATE_AUTH_TOKEN, "Token Dit me may Update"
            )
        }

        @JvmStatic
        fun getAuthToken(userId: Long) {
            methodChannel?.invokeMethod(
                MicroFrontendFlutterEvent.GET_AUTH_TOKEN, "Token Dit me may Auth"
            )
        }
    }
}