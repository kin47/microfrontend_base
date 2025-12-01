pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}
dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.PREFER_SETTINGS)
    val storageUrl = System.getenv("FLUTTER_STORAGE_BASE_URL") ?: "https://storage.googleapis.com"
    repositories {
        google()
        mavenCentral()
        maven("$storageUrl/download.flutter.io")
    }
}

rootProject.name = "MicroFrontendAndroid"
include(":app")
val filePath = settingsDir.parentFile.toString() + "/flutter_base_application/.android/include_flutter.groovy"
apply(from = File(filePath))