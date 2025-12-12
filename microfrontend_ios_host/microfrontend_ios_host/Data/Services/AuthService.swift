import Foundation

/// Simple service to simulate remote authentication.
/// Replace implementation with real networking when backend is available.
final class AuthService {
    func login(email: String, password: String) async throws -> AuthResponseDTO {
        guard !email.isEmpty, !password.isEmpty else {
            throw AuthError.emptyFields
        }

        guard Self.isValidEmail(email) else {
            throw AuthError.invalidEmail
        }

        // Simulate network delay
        try await Task.sleep(nanoseconds: 800_000_000)

        // Placeholder credential check
        if email.lowercased() == "test@example.com", password == "password" {
            return AuthResponseDTO(email: email, token: UUID().uuidString)
        } else if password.count < 4 {
            throw AuthError.invalidCredentials
        } else {
            // Simulate occasional network issue
            throw AuthError.network
        }
    }

    private static func isValidEmail(_ email: String) -> Bool {
        // Basic email validation for demo purposes
        let pattern = #"^\S+@\S+\.\S+$"#
        return email.range(of: pattern, options: .regularExpression) != nil
    }
}



