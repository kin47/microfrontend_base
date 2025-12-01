package com.example.microfrontendandroid.data.request

import com.google.gson.annotations.SerializedName

data class LoginRequest(
    @SerializedName("email")
    val email: String,
    @SerializedName("password")
    val password: String,
    @SerializedName("is_admin")
    val isAdmin: Boolean
) 