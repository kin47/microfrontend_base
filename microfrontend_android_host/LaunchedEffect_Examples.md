# LaunchedEffect Explained

## What is LaunchedEffect?

`LaunchedEffect` is a Jetpack Compose side-effect that launches a coroutine when a specified key changes. It's used for handling one-time side effects like:
- Navigation
- API calls
- Showing snackbars
- Timer operations
- Database operations

## How LaunchedEffect Works

```kotlin
LaunchedEffect(key1, key2, key3) {
    // This block runs in a coroutine scope
    // It executes when ANY of the keys change
    // Previous coroutine is cancelled when keys change
}
```

## Key Concepts

1. **Key Parameter**: Determines when the effect should trigger
2. **Coroutine Scope**: The lambda runs in a coroutine, allowing async operations
3. **Cancellation**: Previous coroutine is cancelled when keys change
4. **Recomposition Safety**: Won't cause infinite recompositions

## Common Usage Patterns

### 1. Navigation (like in your code)
```kotlin
LaunchedEffect(uiState.isSuccess) {
    if (uiState.isSuccess) {
        onNavigateToHome()
        viewModel.resetSuccess()
    }
}
```

### 2. Showing Snackbar
```kotlin
LaunchedEffect(uiState.error) {
    uiState.error?.let { error ->
        snackbarHostState.showSnackbar(error)
    }
}
```

### 3. API Calls
```kotlin
LaunchedEffect(Unit) { // Unit means run only once
    viewModel.loadData()
}
```

### 4. Timer/Delayed Operations
```kotlin
LaunchedEffect(Unit) {
    delay(2000) // Wait 2 seconds
    showWelcomeMessage()
}
```

### 5. Multiple Keys
```kotlin
LaunchedEffect(userId, refreshTrigger) {
    // Runs when either userId OR refreshTrigger changes
    viewModel.loadUserData(userId)
}
```

## Important Notes

- **Key Changes**: The effect triggers when ANY key value changes
- **Cancellation**: Previous coroutine is automatically cancelled
- **One-time Effects**: Perfect for operations that should happen once per key change
- **No Return Value**: LaunchedEffect doesn't return anything
- **Compose Scope**: Runs within the composition scope

## When to Use LaunchedEffect vs Other Effects

- **LaunchedEffect**: One-time side effects triggered by state changes
- **rememberCoroutineScope**: When you need to launch coroutines from event handlers
- **produceState**: When you need to convert non-Compose state to Compose state
- **derivedStateOf**: When you need to compute derived state

## Your Login Example Breakdown

```kotlin
LaunchedEffect(uiState.isSuccess) {
    if (uiState.isSuccess) {
        onNavigateToHome()        // Navigate to home screen
        viewModel.resetSuccess()  // Reset state to prevent re-navigation
    }
}
```

**What happens:**
1. User clicks login button
2. ViewModel processes login
3. `uiState.isSuccess` changes from `false` to `true`
4. LaunchedEffect detects the change and executes the block
5. Navigation occurs and success state is reset
6. If `isSuccess` changes again, the effect will trigger again (but reset prevents issues)
