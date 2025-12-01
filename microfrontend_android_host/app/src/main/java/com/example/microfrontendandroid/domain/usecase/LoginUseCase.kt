package com.example.microfrontendandroid.domain.usecase

import com.example.microfrontendandroid.domain.repository.AuthRepository
import javax.inject.Inject

class LoginUseCase @Inject constructor(
    private val authRepository: AuthRepository
) {
    suspend operator fun invoke(email: String, password: String, isAdmin: Boolean): Result<String> {
        return authRepository.login(email, password, isAdmin)
    }
} 