import Foundation

struct UserSession: Identifiable {
    let id: UUID
    let email: String
    let token: String

    init(id: UUID = UUID(), email: String, token: String) {
        self.id = id
        self.email = email
        self.token = token
    }
}



