package com.example.microfrontendandroid.data.model

import com.google.gson.annotations.SerializedName

data class User(
    val id: Int?,
    val name: String?,
    val email: String?,
    @SerializedName("phone_number")
    val phoneNumber: String?,
    val avatar: String?,
    @SerializedName("cover_image")
    val coverImage: String?,
    @SerializedName("can_predict_disease")
    val canPredictDisease: Boolean,
    @SerializedName("can_receive_noti")
    val canReceiveNoti: Boolean,
    @SerializedName("can_auto_control")
    val canAutoControl: Boolean,
    @SerializedName("is_admin")
    val isAdmin: Boolean,
)