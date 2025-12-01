package com.example.microfrontendandroid.presentation.login

import androidx.compose.foundation.layout.*
import androidx.compose.foundation.text.KeyboardOptions
import androidx.compose.material3.*
import androidx.compose.runtime.*
import androidx.compose.ui.Alignment
import androidx.compose.ui.Modifier
import androidx.compose.ui.text.input.ImeAction
import androidx.compose.ui.text.input.KeyboardType
import androidx.compose.ui.text.input.PasswordVisualTransformation
import androidx.compose.ui.tooling.preview.Preview
import androidx.compose.ui.unit.dp
import androidx.lifecycle.compose.collectAsStateWithLifecycle
import com.example.microfrontendandroid.ui.theme.MicroFrontendAndroidTheme
import androidx.compose.material3.ExperimentalMaterial3Api

@Composable
fun LoginScreen(
    viewModel: LoginViewModel,
    onNavigateToHome: () -> Unit,
    modifier: Modifier = Modifier
) {
    val uiState by viewModel.uiState.collectAsStateWithLifecycle()

    // ===== LAUNCHEDEFFECT EXPLANATION =====
    // LaunchedEffect is a Compose side-effect that launches a coroutine when the specified key changes
    // 
    // How it works:
    // 1. It takes a "key" parameter (uiState.isSuccess) that determines when to trigger
    // 2. When the key value changes, it cancels any previous coroutine and starts a new one
    // 3. The lambda block runs in a coroutine scope, allowing for async operations
    // 4. It's perfect for handling one-time side effects like navigation, API calls, etc.
    //
    // In this case:
    // - Key: uiState.isSuccess (boolean)
    // - When isSuccess changes from false to true, the block executes
    // - When isSuccess changes from true to false, the block executes again
    // - This ensures navigation happens exactly when login succeeds
    LaunchedEffect(uiState.isSuccess) {
        if (uiState.isSuccess) {
            // Navigate to home screen when login is successful
            onNavigateToHome()
            // Reset the success state to prevent multiple navigations
            viewModel.resetSuccess()
        }
    }

    LoginContent(
        uiState = uiState,
        onEmailChange = viewModel::onEmailChange,
        onPasswordChange = viewModel::onPasswordChange,
        onIsAdminChange = viewModel::onIsAdminChange,
        onLoginClick = viewModel::login,
        onErrorDismiss = viewModel::clearError,
        modifier = modifier
    )
}

@OptIn(ExperimentalMaterial3Api::class)
@Composable
fun LoginContent(
    uiState: LoginUiState,
    onEmailChange: (String) -> Unit,
    onPasswordChange: (String) -> Unit,
    onIsAdminChange: (Boolean) -> Unit,
    onLoginClick: () -> Unit,
    onErrorDismiss: () -> Unit,
    modifier: Modifier = Modifier
) {
    Column(
        modifier = modifier
            .fillMaxSize()
            .padding(24.dp),
        horizontalAlignment = Alignment.CenterHorizontally,
        verticalArrangement = Arrangement.Center
    ) {
        // Title
        Text(
            text = "Welcome Back",
            style = MaterialTheme.typography.headlineLarge,
            color = MaterialTheme.colorScheme.primary
        )
        
        Spacer(modifier = Modifier.height(8.dp))
        
        Text(
            text = "Sign in to your account",
            style = MaterialTheme.typography.bodyLarge,
            color = MaterialTheme.colorScheme.onSurfaceVariant
        )
        
        Spacer(modifier = Modifier.height(48.dp))
        
        // Email field
        OutlinedTextField(
            value = uiState.email,
            onValueChange = onEmailChange,
            label = { Text("Email") },
            modifier = Modifier.fillMaxWidth(),
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Email,
                imeAction = ImeAction.Next
            ),
            singleLine = true
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        // Password field
        OutlinedTextField(
            value = uiState.password,
            onValueChange = onPasswordChange,
            label = { Text("Password") },
            modifier = Modifier.fillMaxWidth(),
            visualTransformation = PasswordVisualTransformation(),
            keyboardOptions = KeyboardOptions(
                keyboardType = KeyboardType.Password,
                imeAction = ImeAction.Done
            ),
            singleLine = true
        )
        
        Spacer(modifier = Modifier.height(16.dp))
        
        // Admin checkbox
        Row(
            modifier = Modifier.fillMaxWidth(),
            verticalAlignment = Alignment.CenterVertically
        ) {
            Checkbox(
                checked = uiState.isAdmin,
                onCheckedChange = onIsAdminChange
            )
            Spacer(modifier = Modifier.width(8.dp))
            Text(
                text = "Login as Admin",
                style = MaterialTheme.typography.bodyMedium
            )
        }
        
        Spacer(modifier = Modifier.height(24.dp))
        
        // Login button
        Button(
            onClick = onLoginClick,
            modifier = Modifier
                .fillMaxWidth()
                .height(56.dp),
            enabled = !uiState.isLoading
        ) {
            if (uiState.isLoading) {
                Box(
                    modifier = Modifier.fillMaxSize(),
                    contentAlignment = Alignment.Center
                ) {
                    CircularProgressIndicator(
                        modifier = Modifier.size(24.dp),
                        strokeWidth = 2.dp,
                        color = MaterialTheme.colorScheme.onPrimary
                    )
                }
            } else {
                Text("Sign In")
            }
        }
        
        // Error message - Only recompose when error changes
        uiState.error?.let { error ->
            Spacer(modifier = Modifier.height(16.dp))
            Card(
                modifier = Modifier.fillMaxWidth(),
                colors = CardDefaults.cardColors(
                    containerColor = MaterialTheme.colorScheme.errorContainer
                )
            ) {
                Row(
                    modifier = Modifier
                        .fillMaxWidth()
                        .padding(16.dp),
                    horizontalArrangement = Arrangement.SpaceBetween,
                    verticalAlignment = Alignment.CenterVertically
                ) {
                    Text(
                        text = error,
                        color = MaterialTheme.colorScheme.onErrorContainer,
                        modifier = Modifier.weight(1f)
                    )
                    IconButton(onClick = onErrorDismiss) {
                        Text(
                            text = "×",
                            style = MaterialTheme.typography.titleLarge,
                            color = MaterialTheme.colorScheme.onErrorContainer
                        )
                    }
                }
            }
        }
    }
}

@Preview(showBackground = true)
@Composable
fun LoginScreenPreview() {
    MicroFrontendAndroidTheme {
        LoginContent(
            uiState = LoginUiState(
                email = "minhtq4702@gmail.com",
                password = "123456a@A",
                isAdmin = false
            ),
            onEmailChange = {},
            onPasswordChange = {},
            onIsAdminChange = {},
            onLoginClick = {},
            onErrorDismiss = {}
        )
    }
}

@Preview(showBackground = true)
@Composable
fun LoginScreenLoadingPreview() {
    MicroFrontendAndroidTheme {
        LoginContent(
            uiState = LoginUiState(
                email = "minhtq4702@gmail.com",
                password = "123456a@A",
                isAdmin = false,
                isLoading = true
            ),
            onEmailChange = {},
            onPasswordChange = {},
            onIsAdminChange = {},
            onLoginClick = {},
            onErrorDismiss = {}
        )
    }
}

@Preview(showBackground = true)
@Composable
fun LoginScreenErrorPreview() {
    MicroFrontendAndroidTheme {
        LoginContent(
            uiState = LoginUiState(
                email = "minhtq4702@gmail.com",
                password = "123456a@A",
                isAdmin = false,
                error = "Invalid email or password"
            ),
            onEmailChange = {},
            onPasswordChange = {},
            onIsAdminChange = {},
            onLoginClick = {},
            onErrorDismiss = {}
        )
    }
} 