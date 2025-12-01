package com.example.microfrontendandroid.data.repository

import android.content.Context
import android.util.Log
import androidx.datastore.core.DataStore
import androidx.datastore.preferences.core.Preferences
import androidx.datastore.preferences.core.edit
import androidx.datastore.preferences.core.stringPreferencesKey
import androidx.datastore.preferences.preferencesDataStore
import com.example.microfrontendandroid.data.request.LoginRequest
import com.example.microfrontendandroid.data.remote.AuthApiService
import com.example.microfrontendandroid.domain.repository.AuthRepository
import dagger.hilt.android.qualifiers.ApplicationContext
import kotlinx.coroutines.flow.Flow
import kotlinx.coroutines.flow.catch
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.flow.map
import kotlinx.coroutines.withTimeout
import javax.inject.Inject
import kotlin.time.Duration.Companion.seconds

private val Context.dataStore: DataStore<Preferences> by preferencesDataStore(name = "auth_prefs")

class AuthRepositoryImpl @Inject constructor(
    private val authApiService: AuthApiService,
    @ApplicationContext private val context: Context
) : AuthRepository {

    private val tokenKey = stringPreferencesKey("access_token")
    private val TAG = "AuthRepositoryImpl"

    override suspend fun login(email: String, password: String, isAdmin: Boolean): Result<String> {
        return try {
            Log.d(TAG, "Attempting login for email: $email, isAdmin: $isAdmin")
            val loginRequest = LoginRequest(email, password, isAdmin)
            val response = authApiService.login(loginRequest)
            Log.d(TAG, "Login successful, token received")
            Result.success(response.accessToken)
        } catch (e: Exception) {
            Log.e(TAG, "Login failed: ${e.message}", e)
            Result.failure(e)
        }
    }

    override suspend fun saveToken(token: String) {
        Log.d(TAG, "Saving token to DataStore")
        context.dataStore.edit { preferences ->
            preferences[tokenKey] = token
        }
    }

    override suspend fun getToken(): String? {
        return try {
            withTimeout(5.seconds) {
                context.dataStore.data.map { preferences ->
                    preferences[tokenKey]
                }.first()
            }
        } catch (e: Exception) {
            Log.e(TAG, "Error getting token: ${e.message}", e)
            null
        }
    }

    override suspend fun clearToken() {
        Log.d(TAG, "Clearing token from DataStore")
        context.dataStore.edit { preferences ->
            preferences.remove(tokenKey)
        }
    }

    override fun isLoggedIn(): Flow<Boolean> {
//        return context.dataStore.data
//            .map { preferences ->
//                true
//            }
//            .catch { e ->
//                Log.e(TAG, "Error checking login status: ${e.message}", e)
//                emit(false) // Default to not logged in on error
//            }
        return context.dataStore.data
            .map { preferences ->
                val response = authApiService.getUserInfo()
                if (response.data != null) {
                    Log.d(TAG, "User is logged in: ${response.data.email}")
                    true
                } else {
                    Log.d(TAG, "User is not logged in")
                    false
                }
            }
            .catch { e ->
                Log.e(TAG, "Error checking login status: ${e.message}", e)
                emit(false) // Default to not logged in on error
            }
    }
} 