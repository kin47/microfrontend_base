package com.example.microfrontendandroid.presentation.login

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.example.microfrontendandroid.domain.repository.AuthRepository
import com.example.microfrontendandroid.domain.usecase.LoginUseCase
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LoginViewModel @Inject constructor(
    private val loginUseCase: LoginUseCase,
    private val authRepository: AuthRepository
) : ViewModel() {

    private val _uiState = MutableStateFlow(LoginUiState())
    val uiState: StateFlow<LoginUiState> = _uiState.asStateFlow()

    fun onEmailChange(email: String) {
        _uiState.value = _uiState.value.copy(email = email)
    }

    fun onPasswordChange(password: String) {
        _uiState.value = _uiState.value.copy(password = password)
    }

    fun onIsAdminChange(isAdmin: Boolean) {
        _uiState.value = _uiState.value.copy(isAdmin = isAdmin)
    }

    fun login() {
        val currentState = _uiState.value
        if (currentState.email.isBlank() || currentState.password.isBlank()) {
            _uiState.value = currentState.copy(
                error = "Email and password are required"
            )
            return
        }

        // ===== ASYNC OPERATION WITH COROUTINE =====
        // viewModelScope.launch - Đây là cách để chạy code bất đồng bộ trong ViewModel
        // 
        // LUỒNG THỰC THI:
        // 1. viewModelScope.launch tạo một coroutine mới trong background thread
        // 2. Code bên trong launch block sẽ chạy trên background thread (không phải Main thread)
        // 3. Khi ViewModel bị destroy, coroutine sẽ tự động bị cancel
        // 4. StateFlow updates sẽ tự động được dispatch về Main thread
        viewModelScope.launch {
            // ===== STEP 1: SHOW LOADING STATE =====
            // Cập nhật UI để hiển thị loading spinner và xóa error cũ
            _uiState.value = currentState.copy(isLoading = true, error = null)

            // ===== STEP 2: CALL LOGIN API =====
            // Gọi use case để thực hiện login (có thể là network call)
            // result sẽ là Result<T> - success hoặc failure
            val result = loginUseCase(
                email = currentState.email,
                password = currentState.password,
                isAdmin = currentState.isAdmin
            )

            // ===== STEP 3: HANDLE RESULT =====
            if (result.isSuccess) {
                // ===== SUCCESS CASE =====
                // Lưu token vào local storage (SharedPreferences/DataStore)
                authRepository.saveToken(result.getOrThrow())
                // Cập nhật UI state: success = true, loading = false
                _uiState.value = currentState.copy(isSuccess = true, isLoading = false)
            } else {
                // ===== ERROR CASE =====
                // Lấy error message từ exception hoặc dùng default message
                _uiState.value = currentState.copy(
                    isLoading = false,
                    error = result.exceptionOrNull()?.message ?: "Login failed"
                )
            }
        }
        // ===== LƯU Ý QUAN TRỌNG =====
        // - Code này chạy trên background thread (không block UI)
        // - StateFlow updates tự động dispatch về Main thread
        // - Nếu user navigate away, coroutine sẽ bị cancel
        // - Đây là pattern chuẩn cho async operations trong ViewModel
    }

    fun clearError() {
        _uiState.value = _uiState.value.copy(error = null)
    }

    fun resetSuccess() {
        _uiState.value = _uiState.value.copy(isSuccess = false)
    }

    override fun onCleared() {
        super.onCleared()
        // Clear any sensitive data from memory
        _uiState.value = LoginUiState()
    }
}

data class LoginUiState(
    val email: String = "",
    val password: String = "",
    val isAdmin: Boolean = false,
    val isLoading: Boolean = false,
    val isSuccess: Boolean = false,
    val error: String? = null
) 