//
//  FlutterViewController.swift
//  microfrontend_ios_host
//
//  Created for Flutter integration
//

import UIKit
import Flutter
import FlutterPluginRegistrant

class FlutterHostViewController: UIViewController {
    private var flutterEngine: FlutterEngine?
    private var embeddedFlutterViewController: FlutterViewController?
    private let channelName = "com.example.flutter_base_application"
    private var methodChannel: FlutterMethodChannel?
    private var storedAuthToken: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Initialize Flutter engine
        flutterEngine = FlutterEngine(name: "flutter_engine")
        
        // Set up the entry point
        guard let flutterEngine = flutterEngine else { return }
        
        // Execute the Flutter entry point
        flutterEngine.run(withEntrypoint: "startApplication")
        
        // Register plugins
        GeneratedPluginRegistrant.register(with: flutterEngine)
        
        // Set up method channel
        methodChannel = FlutterMethodChannel(
            name: channelName,
            binaryMessenger: flutterEngine.binaryMessenger
        )
        
        // Set method call handler
        methodChannel?.setMethodCallHandler { [weak self] (call: FlutterMethodCall, result: @escaping FlutterResult) in
            self?.handleMethodCall(call: call, result: result)
        }
        
        // Create Flutter view controller
        embeddedFlutterViewController = FlutterViewController(engine: flutterEngine, nibName: nil, bundle: nil)
        
        guard let embeddedFlutterViewController = embeddedFlutterViewController else { return }
        
        addChild(embeddedFlutterViewController)
        view.addSubview(embeddedFlutterViewController.view)
        embeddedFlutterViewController.view.frame = view.bounds
        embeddedFlutterViewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        embeddedFlutterViewController.didMove(toParent: self)
    }
    
    func updateAuthToken(_ token: String) {
        storedAuthToken = token
        methodChannel?.invokeMethod("updateAuthToken", arguments: token)
    }
    
    func getAuthToken() {
        methodChannel?.invokeMethod("getAuthToken", arguments: nil)
    }
    
    private func handleMethodCall(call: FlutterMethodCall, result: @escaping FlutterResult) {
        switch call.method {
        case "getAuthToken":
            // Return the stored auth token
            if let token = storedAuthToken {
                result(token)
            } else {
                // Try to retrieve from UserDefaults as fallback
                if let token = UserDefaults.standard.string(forKey: "auth_token") {
                    result(token)
                } else {
                    result(FlutterError(code: "NO_TOKEN", message: "No auth token available", details: nil))
                }
            }
        case "updateAuthToken":
            // Handle update auth token from Flutter
            if let token = call.arguments as? String {
                storedAuthToken = token
                UserDefaults.standard.set(token, forKey: "auth_token")
                print("Updated auth token: \(token)")
            }
            result(nil)
        default:
            result(FlutterMethodNotImplemented)
        }
    }
}

