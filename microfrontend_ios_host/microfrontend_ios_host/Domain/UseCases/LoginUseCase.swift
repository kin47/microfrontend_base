import Foundation

protocol LoginUseCase {
    func execute(email: String, password: String) async throws -> UserSession
}

struct DefaultLoginUseCase: LoginUseCase {
    private let repository: AuthRepository

    init(repository: AuthRepository) {
        self.repository = repository
    }

    func execute(email: String, password: String) async throws -> UserSession {
        try await repository.login(email: email, password: password)
    }
}
