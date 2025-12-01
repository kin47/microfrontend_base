package com.example.microfrontendandroid.data.remote

import com.example.microfrontendandroid.data.constants.EndpointConstants
import com.example.microfrontendandroid.data.model.User
import com.example.microfrontendandroid.data.request.LoginRequest
import com.example.microfrontendandroid.data.response.LoginResponse
import com.example.microfrontendandroid.data.response.base.BaseResponse
import retrofit2.http.Body
import retrofit2.http.GET
import retrofit2.http.POST

interface AuthApiService {
    @POST(EndpointConstants.LOGIN)
    suspend fun login(@Body loginRequest: LoginRequest): LoginResponse

    @GET(EndpointConstants.USER_INFO)
    suspend fun getUserInfo(): BaseResponse<User>
}