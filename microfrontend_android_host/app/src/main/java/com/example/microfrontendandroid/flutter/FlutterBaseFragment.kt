package com.example.microfrontendandroid.flutter

import android.app.Activity
import android.content.Context
import android.graphics.Color
import android.os.Bundle
import android.view.View
import com.example.microfrontendandroid.flutter.enums.MicroFrontendFlutterRoute
import io.flutter.FlutterInjector
import io.flutter.embedding.android.FlutterFragment
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel
import java.util.concurrent.TimeUnit

abstract class FlutterBaseFragment: FlutterFragment() {
    lateinit var methodChannel: MethodChannel

    abstract val initialRoute: MicroFrontendFlutterRoute

    abstract val methodCallHandler: MethodChannel.MethodCallHandler

    abstract val channelName: String

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        val flutterEngine = FlutterEngine(context)
        flutterEngine.navigationChannel.setInitialRoute(initialRoute.getPath())
        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
                FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                initialRoute.getLibraryURI(),
                initialRoute.getEntryPoint()
            )
        )
        flutterEngine.platformViewsController.attach(context as Activity, flutterEngine.renderer, flutterEngine.dartExecutor)
        return flutterEngine
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
        methodChannel.setMethodCallHandler(methodCallHandler)
    }

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        super.onViewCreated(view, savedInstanceState)
        if (savedInstanceState != null) return
        postponeEnterTransition()
        view.setBackgroundColor(Color.WHITE)
        view.post { postponeEnterTransition(0, TimeUnit.MILLISECONDS) }
    }
}

