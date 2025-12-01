package com.example.microfrontendandroid.presentation.login

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.Surface
import androidx.compose.ui.Modifier
import com.example.microfrontendandroid.flutter.FlutterCoreUtils
import com.example.microfrontendandroid.ui.theme.MicroFrontendAndroidTheme
import dagger.hilt.android.AndroidEntryPoint
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngineCache

@AndroidEntryPoint
class LoginActivity : ComponentActivity() {
    private val viewModel: LoginViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        if (FlutterEngineCache.getInstance().get(FlutterCoreUtils.coreEngineId) == null) {
            FlutterCoreUtils.initFlutterEngine(this)
        }
        setContent {
            MicroFrontendAndroidTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    LoginScreen(
                        viewModel = viewModel,
                        onNavigateToHome = {
                            startActivity(FlutterActivity.createDefaultIntent(this))
                            finish()
                        }
                    )
                }
            }
        }
    }
} 