//
//  LoginViewModel.swift
//  microfrontend_ios_host
//
//  Created by Minh Tran on 12/11/25.
//

import Foundation

@MainActor
final class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published private(set) var isLoading: Bool = false
    @Published private(set) var errorMessage: String?
    @Published private(set) var session: UserSession?
    @Published private(set) var isLoggedIn: Bool = false

    private let loginUseCase: LoginUseCase

    init(loginUseCase: LoginUseCase) {
        self.loginUseCase = loginUseCase
    }

    var isFormValid: Bool {
        !email.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty &&
        !password.trimmingCharacters(in: .whitespacesAndNewlines).isEmpty
    }

    func login() {
        guard !isLoading else { return }
        guard isFormValid else {
            errorMessage = AuthError.emptyFields.localizedDescription
            return
        }

        errorMessage = nil
        isLoading = true

        Task {
            do {
                let result = try await loginUseCase.execute(email: email, password: password)
                session = result
                isLoggedIn = true
            } catch {
                if let authError = error as? AuthError {
                    errorMessage = authError.localizedDescription
                } else {
                    errorMessage = error.localizedDescription
                }
            }
            isLoading = false
        }
    }
}
