package com.example.microfrontendandroid.flutter

import android.content.Context
import com.example.microfrontendandroid.flutter.enums.MicroFrontendFlutterRoute
import io.flutter.FlutterInjector
import io.flutter.embedding.android.FlutterFragmentActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.embedding.engine.dart.DartExecutor
import io.flutter.plugin.common.MethodChannel

abstract class FlutterBaseActivity: FlutterFragmentActivity() {
    private lateinit var methodChannel: MethodChannel
    abstract val initialRoute: MicroFrontendFlutterRoute

    abstract val methodCallHandler: MethodChannel.MethodCallHandler

    abstract val channelName: String

    override fun provideFlutterEngine(context: Context): FlutterEngine? {
        val flutterEngine = FlutterEngine(context)
        if (initialRoute.getPath().isNotEmpty()) {
            flutterEngine.navigationChannel.setInitialRoute(initialRoute.getPath())
        }
        flutterEngine.dartExecutor.executeDartEntrypoint(
            DartExecutor.DartEntrypoint(
                FlutterInjector.instance().flutterLoader().findAppBundlePath(),
                initialRoute.getLibraryURI(),
                initialRoute.getEntryPoint()
            )
        )
        return flutterEngine
    }

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        methodChannel = MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
        methodChannel.setMethodCallHandler(methodCallHandler)
    }

//    override fun attachBaseContext(context: Context) {
//        val newBase: Context = ViewPumpContextWrapper.wrap(context)
//        val newLocale = Util.getLocate(context)
//        val langContext: Context
//        langContext = if (newLocale == null) ContextWrapper.wrapLanguage(
//            newBase,
//            Locale.ROOT
//        ) else ContextWrapper.wrapLanguage(newBase, newLocale)
//        applyOverrideConfiguration(langContext.getResources().configuration)
//        super.attachBaseContext(ViewPumpContextWrapper.wrap(langContext))
//    }
}