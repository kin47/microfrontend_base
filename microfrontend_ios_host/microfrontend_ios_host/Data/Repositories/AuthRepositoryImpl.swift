import Foundation

final class AuthRepositoryImpl: AuthRepository {
    private let service: AuthService

    init(service: AuthService) {
        self.service = service
    }

    func login(email: String, password: String) async throws -> UserSession {
        let response = try await service.login(email: email, password: password)
        return UserSession(email: response.email, token: response.token)
    }
}



