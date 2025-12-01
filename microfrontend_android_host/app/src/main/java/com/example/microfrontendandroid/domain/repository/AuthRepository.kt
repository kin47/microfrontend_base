package com.example.microfrontendandroid.domain.repository

import kotlinx.coroutines.flow.Flow

interface AuthRepository {
    suspend fun login(email: String, password: String, isAdmin: Boolean): Result<String>
    suspend fun saveToken(token: String)
    suspend fun getToken(): String?
    suspend fun clearToken()
    fun isLoggedIn(): Flow<Boolean>
} 