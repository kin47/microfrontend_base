import Foundation

enum AuthError: LocalizedError {
    case invalidCredentials
    case emptyFields
    case invalidEmail
    case network
    case unknown

    var errorDescription: String? {
        switch self {
        case .invalidCredentials:
            return "The email or password is incorrect."
        case .emptyFields:
            return "Please fill in both email and password."
        case .invalidEmail:
            return "Please enter a valid email address."
        case .network:
            return "Network error. Please try again."
        case .unknown:
            return "An unexpected error occurred. Please try again."
        }
    }
}



