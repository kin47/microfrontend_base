package com.example.microfrontendandroid.presentation

import android.content.Intent
import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.*
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.microfrontendandroid.flutter.FlutterCoreUtils
import com.example.microfrontendandroid.presentation.login.LoginActivity
import com.example.microfrontendandroid.ui.theme.MicroFrontendAndroidTheme
import dagger.hilt.android.AndroidEntryPoint
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngineCache

@AndroidEntryPoint
class MainActivity : ComponentActivity() {
    
    private val viewModel: MainViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContent {
            MicroFrontendAndroidTheme {
                Surface(
                    modifier = Modifier.fillMaxSize(),
                    color = MaterialTheme.colorScheme.background
                ) {
                    MainScreen(
                        viewModel = viewModel,
                        onNavigateToLogin = {
                            startActivity(Intent(this, LoginActivity::class.java))
                            finish()
                        },
                        onNavigateToHome = {
                            FlutterCoreUtils.updateToken(this)
                            startActivity(FlutterActivity.createDefaultIntent(this))
                            FlutterCoreUtils.getAuthToken(1)
                            finish()
                        },
                    )
                }
            }
        }
    }
}

@Composable
fun MainScreen(
    viewModel: MainViewModel,
    onNavigateToLogin: () -> Unit,
    onNavigateToHome: () -> Unit,
    modifier: Modifier = Modifier
) {
    val isLoggedIn: Boolean? by viewModel.isLoggedIn.collectAsStateWithLifecycle(initialValue = null)
    
    LaunchedEffect(isLoggedIn) {
        // Handle navigation based on the login state
        if (isLoggedIn == false) {
            onNavigateToLogin()
        } else if (isLoggedIn == true) {
            /// navigate to flutter activity home
            onNavigateToHome()
        }
    }
}