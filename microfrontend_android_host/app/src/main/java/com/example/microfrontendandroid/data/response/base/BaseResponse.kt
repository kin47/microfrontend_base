package com.example.microfrontendandroid.data.response.base

data class BaseResponse<T> (
    val status: Int? = null,
    val message: String? = null,
    val data: T? = null
)