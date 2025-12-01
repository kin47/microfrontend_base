package com.example.microfrontendandroid.data.response.base

class BaseListResponse<T>(
    val status: Int? = null,
    val message: String? = null,
    val data: List<T>? = null
)