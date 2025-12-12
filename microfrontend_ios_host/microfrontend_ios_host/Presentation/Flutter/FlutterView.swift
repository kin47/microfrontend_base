//
//  FlutterView.swift
//  microfrontend_ios_host
//
//  Created for Flutter integration
//

import SwiftUI

struct FlutterView: UIViewControllerRepresentable {
    let authToken: String?
    
    func makeUIViewController(context: Context) -> FlutterHostViewController {
        let controller = FlutterHostViewController()
        
        // Store token in UserDefaults for persistence
        if let token = authToken {
            UserDefaults.standard.set(token, forKey: "auth_token")
            
            // Update auth token in Flutter after a short delay to ensure engine is ready
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                controller.updateAuthToken(token)
            }
        }
        
        return controller
    }
    
    func updateUIViewController(_ uiViewController: FlutterHostViewController, context: Context) {
        // Update auth token if it changed
        if let token = authToken {
            UserDefaults.standard.set(token, forKey: "auth_token")
            uiViewController.updateAuthToken(token)
        }
    }
}

