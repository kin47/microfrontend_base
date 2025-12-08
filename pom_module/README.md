# POM Module

A Flutter microfrontend module built with **Clean Architecture** principles to manage Point of Sale (POM) features.

## Overview

This module is part of a microfrontend architecture, designed as a standalone Flutter module that can be integrated into a larger application. It follows Clean Architecture principles to ensure separation of concerns, testability, and maintainability.

## Architecture

This project follows **Clean Architecture**, which separates the codebase into three main layers:

```
┌─────────────────────────────────────┐
│      Presentation Layer             │
│  (UI, State Management, ViewModels) │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│        Domain Layer                 │
│  (Entities, Use Cases, Interfaces) │
└──────────────┬──────────────────────┘
               │
┌──────────────▼──────────────────────┐
│         Data Layer                  │
│  (Repositories, DataSources, DTOs) │
└─────────────────────────────────────┘
```

### Layer Responsibilities

#### 1. **Domain Layer** (`lib/domain/`)
The innermost layer containing business logic and core entities. This layer is independent of frameworks and external dependencies.

- **`entity/`**: Core business entities (e.g., `SaleItemEntity`)
- **`repository/`**: Repository interfaces defining contracts for data access
- **`usecase/`**: Business use cases that orchestrate domain logic
  - `interface/`: Use case interfaces
  - `impl/`: Use case implementations

**Key Principles:**
- No dependencies on external frameworks
- Pure business logic
- Defines contracts (interfaces) for data access

#### 2. **Data Layer** (`lib/data/`)
Handles data retrieval and storage from various sources (API, local storage).

- **`datasource/`**: Data sources for fetching/storing data
  - `remote/`: API clients
  - `local/`: Local storage implementations
- **`dto/`**: Data Transfer Objects for API responses
- **`repository/`**: Repository implementations that implement domain interfaces
- **`constants/`**: API endpoints and other constants

**Key Principles:**
- Implements domain repository interfaces
- Converts DTOs to domain entities
- Handles data source abstraction (API, local storage)

#### 3. **Presentation Layer** (`lib/presentation/`)
Contains UI components, state management, and view models.

- **`sale/`**: Sale feature module
  - `screen/`: UI screens (e.g., `SaleScreen` with search bar and item list)
  - `cubit/`: State management using Cubit pattern
  - `view_model/`: View models for UI state

**Key Principles:**
- Depends on domain layer only
- Uses state management (Cubit)
- Separates UI logic from business logic

### Additional Components

#### **Dependency Injection** (`lib/di/`)
Uses `injectable` and `get_it` for dependency injection:
- `di.dart`: Dependency injection configuration
- `di.config.dart`: Auto-generated DI configuration

#### **Routing** (`lib/routes/`)
Navigation and routing configuration:
- `pom_route.dart`: Route definitions and navigation setup
- `route_mapper.dart`: Screen route mappings
- `screen_name.dart`: Screen name constants

#### **External** (`lib/external/`)
Module exports and external interfaces

## Project Structure

```
lib/
├── data/                          # Data Layer
│   ├── constants/
│   │   └── endpoint_constants.dart
│   ├── datasource/
│   │   ├── local/
│   │   │   └── sale_store.dart
│   │   └── remote/
│   │       └── api/
│   │           └── sale_api.dart
│   ├── dto/
│   │   └── sale_item_dto.dart
│   └── repository/
│       └── sale_repository_impl.dart
│
├── domain/                         # Domain Layer
│   ├── entity/
│   │   └── sale_item_entity.dart
│   ├── repository/
│   │   └── sale_repository.dart
│   └── usecase/
│       ├── interface/
│       │   └── get_sale_items_use_case.dart
│       └── impl/
│           └── get_sale_items_use_case_impl.dart
│
├── presentation/                   # Presentation Layer
│   └── sale/
│       ├── cubit/
│       │   ├── sale_cubit.dart
│       │   └── sale_state.dart
│       ├── screen/
│       │   └── sale_screen.dart
│       └── view_model/
│           └── sale_screen_view_model.dart
│
├── routes/                         # Routing
│   ├── pom_route.dart
│   ├── route_mapper.dart
│   └── screen_name.dart
│
├── di/                             # Dependency Injection
│   ├── di.dart
│   └── di.config.dart
│
├── external/                       # External exports
│   └── pom_module.dart
│
├── main.dart                       # Entry point
└── pom_module.dart                 # Module export
```

## Key Technologies

### Core Dependencies
- **Flutter SDK**: ^3.9.2
- **flutter_base_libraries**: Base libraries for common functionality
- **flutter_core**: Core utilities and base classes
- **ui_design_system**: Shared UI components

### State Management
- **flutter_bloc**: BLoC pattern for state management
- **freezed**: Immutable classes and union types

### Dependency Injection
- **injectable**: Code generation for dependency injection
- **get_it**: Service locator for dependency injection

### Code Generation
- **build_runner**: Code generation tool
- **json_serializable**: JSON serialization
- **retrofit_generator**: REST API client generation
- **freezed**: Immutable data classes

## Data Flow

The typical data flow in this Clean Architecture follows this pattern:

1. **UI** triggers an action (e.g., search query)
2. **Presentation Layer** (Cubit) receives the event
3. **Use Case** is called from the presentation layer
4. **Repository Interface** (domain) is invoked by the use case
5. **Repository Implementation** (data) executes the request
6. **Data Source** (API/Local) fetches the data
7. **DTO** is converted to **Entity** and returned up the layers
8. **State** is updated in the presentation layer
9. **UI** reflects the updated state

## Features

### Current Features
- **Sale Screen**: Sale item listing with search functionality
- **Search Bar**: Real-time search filtering for sale items
- **Item List**: Display of sale items with details (name, description, price, quantity)
- **State Management**: Using Cubit pattern for state management

## Getting Started

### Prerequisites
- Flutter SDK ^3.9.2
- Dart SDK compatible with Flutter 3.9.2

### Installation

1. Install dependencies:
```bash
flutter pub get
```

2. Generate code (for freezed, json_serializable, injectable):
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

3. Run the module:
```bash
flutter run
```

### Code Generation

This project uses code generation for:
- Dependency injection (`injectable`)
- JSON serialization (`json_serializable`)
- Immutable classes (`freezed`)
- API clients (`retrofit`)

To regenerate code after changes:
```bash
flutter pub run build_runner watch
```

Or for a one-time build:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Module Integration

This module is designed to be integrated into a larger microfrontend application. The module exposes:
- Routes via `PomRoute`
- Screens via route definitions
- External interfaces via `lib/external/pom_module.dart`

## Development Guidelines

### Adding a New Feature

1. **Domain Layer**: Define entities, repository interfaces, and use cases
2. **Data Layer**: Implement repositories and data sources
3. **Presentation Layer**: Create screens, state management, and view models
4. **Routes**: Add route definitions in `route_mapper.dart`
5. **DI**: Register dependencies in `di.dart` (use `@injectable` annotations)

### Best Practices

- **Domain Layer**: Keep it pure - no Flutter dependencies
- **Data Layer**: Implement domain interfaces, handle DTO-to-Entity conversion
- **Presentation Layer**: Keep UI logic separate from business logic
- **Error Handling**: Use `Either<BaseException, T>` pattern for error handling
- **State Management**: Use Cubit for simple state management

## Testing

Run tests with:
```bash
flutter test
```

## License

[Add your license information here]

## Contributing

[Add contributing guidelines here]
