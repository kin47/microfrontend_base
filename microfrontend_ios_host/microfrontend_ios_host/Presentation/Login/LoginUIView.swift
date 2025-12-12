//
//  LoginUIView.swift
//  microfrontend_ios_host
//
//  Created by Minh Tran on 12/11/25.
//

import SwiftUI

struct LoginUIView: View {
    @StateObject private var viewModel: LoginViewModel
    @State private var navigateToFlutter = false

    init(viewModel: LoginViewModel = LoginUIView.makeDefaultViewModel()) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        NavigationStack {
            VStack(spacing: 24) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Microfrontend Base iOS")
                        .font(.largeTitle)
                        .fontWeight(.bold)

                    Text("Sign in to continue")
                        .foregroundColor(.secondary)
                }
                .frame(maxWidth: .infinity, alignment: .leading)

                VStack(spacing: 16) {
                    TextField("Email", text: $viewModel.email)
                        .keyboardType(.emailAddress)
                        .textInputAutocapitalization(.never)
                        .autocorrectionDisabled()
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)

                    SecureField("Password", text: $viewModel.password)
                        .padding()
                        .background(Color(.secondarySystemBackground))
                        .cornerRadius(10)
                }

                if let error = viewModel.errorMessage {
                    Text(error)
                        .font(.footnote)
                        .foregroundColor(.red)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }

                Button(action: {
                    viewModel.login()
                }) {
                    HStack {
                        if viewModel.isLoading {
                            ProgressView()
                                .tint(.white)
                        }
                        Text(viewModel.isLoading ? "Signing In..." : "Sign In")
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .padding()
                    .background(viewModel.isFormValid ? Color.accentColor : Color.gray)
                    .foregroundColor(.white)
                    .cornerRadius(10)
                }
                .disabled(!viewModel.isFormValid || viewModel.isLoading)

                Spacer()

                if viewModel.isLoggedIn, let session = viewModel.session {
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Logged in as \(session.email)")
                            .font(.callout)
                        Text("Session: \(session.token.prefix(8))...")
                            .font(.caption)
                            .foregroundColor(.secondary)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .transition(.opacity)
                }
            }
            .padding()
            .navigationDestination(isPresented: $navigateToFlutter) {
                if let session = viewModel.session {
                    FlutterView(authToken: session.token)
                        .navigationBarBackButtonHidden(true)
                }
            }
            .onChange(of: viewModel.isLoggedIn) { oldValue, newValue in
                if newValue {
                    navigateToFlutter = true
                }
            }
        }
    }

    private static func makeDefaultViewModel() -> LoginViewModel {
        let repository = AuthRepositoryImpl(service: AuthService())
        let useCase = DefaultLoginUseCase(repository: repository)
        return LoginViewModel(loginUseCase: useCase)
    }
}

#Preview {
    LoginUIView()
}
