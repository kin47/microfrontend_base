package com.example.microfrontendandroid.di

import android.util.Log
import com.example.microfrontendandroid.data.constants.ApiConstants
import com.example.microfrontendandroid.data.remote.AuthApiService
import dagger.Module
import dagger.Provides
import dagger.hilt.InstallIn
import dagger.hilt.components.SingletonComponent
import okhttp3.*
import okhttp3.logging.HttpLoggingInterceptor
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.io.IOException
import java.util.concurrent.TimeUnit
import javax.inject.Singleton

@Module
@InstallIn(SingletonComponent::class)
object NetworkModule {

    @Provides
    @Singleton
    fun provideCustomLoggingInterceptor(): Interceptor {
        return Interceptor { chain ->
            val request = chain.request()
            val startTime = System.currentTimeMillis()
            
            // Generate curl command
            val curlCommand = buildCurlCommand(request)
            
            Log.d("HTTP_LOGGER", "┌────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ CURL COMMAND")
            Log.d("HTTP_LOGGER", "├────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ $curlCommand")
            Log.d("HTTP_LOGGER", "├────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ REQUEST")
            Log.d("HTTP_LOGGER", "├────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ Method: ${request.method}")
            Log.d("HTTP_LOGGER", "│ URL: ${request.url}")
            Log.d("HTTP_LOGGER", "│ Headers:")
            request.headers.forEach { (name, value) ->
                Log.d("HTTP_LOGGER", "│   $name: $value")
            }
            
            if (request.body != null) {
                Log.d("HTTP_LOGGER", "│ Body: ${request.body}")
            }
            
            val response = try {
                chain.proceed(request)
            } catch (e: Exception) {
                Log.e("HTTP_LOGGER", "│ ❌ REQUEST FAILED: ${e.message}")
                Log.d("HTTP_LOGGER", "└────────────────────────────────────────────────────────────────────────────────────────────────────")
                throw e
            }
            
            val endTime = System.currentTimeMillis()
            val duration = endTime - startTime
            
            Log.d("HTTP_LOGGER", "├────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ RESPONSE")
            Log.d("HTTP_LOGGER", "├────────────────────────────────────────────────────────────────────────────────────────────────────")
            Log.d("HTTP_LOGGER", "│ Status: ${response.code} ${response.message}")
            Log.d("HTTP_LOGGER", "│ Duration: ${duration}ms")
            Log.d("HTTP_LOGGER", "│ Headers:")
            response.headers.forEach { (name, value) ->
                Log.d("HTTP_LOGGER", "│   $name: $value")
            }
            
            // Log response body if it's text-based
            val responseBody = response.body
            if (responseBody != null) {
                val contentType = responseBody.contentType()
                if (contentType != null && (contentType.type == "text" || contentType.subtype == "json")) {
                    val bodyString = responseBody.string()
                    Log.d("HTTP_LOGGER", "│ Body: $bodyString")
                    // Recreate response body since we consumed it
                    return@Interceptor response.newBuilder()
                        .body(ResponseBody.create(contentType, bodyString))
                        .build()
                }
            }
            
            Log.d("HTTP_LOGGER", "└────────────────────────────────────────────────────────────────────────────────────────────────────")
            response
        }
    }

    private fun buildCurlCommand(request: Request): String {
        val method = request.method
        val url = request.url.toString()
        
        val curlBuilder = StringBuilder("curl")
        
        // Add method if not GET
        if (method != "GET") {
            curlBuilder.append(" -X $method")
        }
        
        // Add headers
        request.headers.forEach { (name, value) ->
            curlBuilder.append(" -H \"$name: $value\"")
        }
        
        // Add body for POST/PUT/PATCH requests
        if (request.body != null && (method == "POST" || method == "PUT" || method == "PATCH")) {
            val bodyString = request.body.toString()
            // Try to extract JSON body if it's a JSON request
            if (bodyString.contains("application/json") || bodyString.contains("{")) {
                // Extract the actual JSON content from the body string
                val jsonMatch = Regex("\\{[^}]*\\}").find(bodyString)
                if (jsonMatch != null) {
                    curlBuilder.append(" -d '${jsonMatch.value}'")
                } else {
                    curlBuilder.append(" -d '$bodyString'")
                }
            } else {
                curlBuilder.append(" -d '$bodyString'")
            }
        }
        
        // Add URL
        curlBuilder.append(" \"$url\"")
        
        return curlBuilder.toString()
    }

    @Provides
    @Singleton
    fun provideOkHttpClient(customLoggingInterceptor: Interceptor): OkHttpClient {
        // Keep the original HttpLoggingInterceptor for additional logging
        val httpLoggingInterceptor = HttpLoggingInterceptor { message ->
            Log.d("HTTP_DETAILED", message)
        }.apply {
            level = HttpLoggingInterceptor.Level.BODY
        }
        
        return OkHttpClient.Builder()
            .addInterceptor(customLoggingInterceptor)
            .addInterceptor(httpLoggingInterceptor)
            .connectTimeout(30, TimeUnit.SECONDS)
            .readTimeout(30, TimeUnit.SECONDS)
            .writeTimeout(30, TimeUnit.SECONDS)
            .connectionPool(okhttp3.ConnectionPool(5, 5, TimeUnit.MINUTES))
            .build()
    }

    @Provides
    @Singleton
    fun provideRetrofit(okHttpClient: OkHttpClient): Retrofit {
        return Retrofit.Builder()
            .baseUrl(ApiConstants.BASE_URL)
            .client(okHttpClient)
            .addConverterFactory(GsonConverterFactory.create())
            .build()
    }

    @Provides
    @Singleton
    fun provideAuthApiService(retrofit: Retrofit): AuthApiService {
        return retrofit.create(AuthApiService::class.java)
    }
} 