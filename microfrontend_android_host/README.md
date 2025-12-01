# MicroFrontend Android Login System

This Android application implements a complete login system using modern Android development practices and libraries.

## Architecture

The project follows Clean Architecture principles with the following layers:

- **Presentation Layer**: Jetpack Compose UI with ViewModels using StateFlow
- **Domain Layer**: Use cases and repository interfaces
- **Data Layer**: Repository implementations, API services, and data models

## Features

- ✅ Jetpack Compose UI with Material 3 design
- ✅ ViewModel with StateFlow (no LiveData)
- ✅ Hilt dependency injection
- ✅ Retrofit for API calls
- ✅ Coroutines for asynchronous operations
- ✅ DataStore for secure token storage
- ✅ Preview support for Compose UI
- ✅ Proper error handling and loading states
- ✅ Network security configuration for localhost development

## API Integration

The login system integrates with the following API endpoint:

```
POST http://localhost:8000/api/v1/auth/login
Content-Type: application/json

{
    "email": "minhtq4702@gmail.com",
    "password": "123456a@A",
    "is_admin": false
}
```

Response:
```json
{
    "access_token": "your_access_token_here"
}
```

## Key Components

### Data Models
- `LoginRequest`: Request model with snake_case serialization
- `LoginResponse`: Response model for access token

### Repository
- `AuthRepository`: Interface defining authentication operations
- `AuthRepositoryImpl`: Implementation with Retrofit and DataStore

### Use Cases
- `LoginUseCase`: Business logic for login operations

### ViewModels
- `LoginViewModel`: Manages login UI state using StateFlow

### UI Components
- `LoginActivity`: Main login activity
- `LoginScreen`: Compose UI with preview support
- `MainActivity`: Entry point that checks login status

## Setup Instructions

1. **Dependencies**: All required dependencies are already added to `build.gradle.kts`
2. **Hilt Setup**: Application class and modules are configured
3. **Network Security**: Configured for localhost development
4. **Permissions**: Internet permission added to manifest

## Usage

1. Launch the app - MainActivity will check login status
2. If not logged in, redirects to LoginActivity
3. Enter credentials and tap "Sign In"
4. On successful login, token is saved and user is redirected to home screen

## Development Notes

- The app uses `localhost:8000` as the base URL for API calls
- For Android emulator, use `10.0.2.2:8000` instead of `localhost:8000`
- Network security config allows cleartext traffic for development
- Token is securely stored using DataStore preferences
- All UI components have preview support for development

## Testing

The login screen includes multiple preview states:
- Normal state with filled form
- Loading state with progress indicator
- Error state with error message

## Next Steps

- Implement HomeActivity for the main app interface
- Add logout functionality
- Implement token refresh mechanism
- Add biometric authentication
- Add unit tests and UI tests 