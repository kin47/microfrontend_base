package com.example.microfrontendandroid.data.constants

class ApiConstants {
    companion object {
        const val CONNECTION_TIMEOUT: Double = 30.0 // seconds
        const val READ_TIMEOUT: Double = 30.0 // seconds
        const val WRITE_TIMEOUT: Double = 30.0 // seconds
        const val BASE_URL = "http://192.168.1.10:8000/api/v1/" // Replace with your actual base URL
    }
}