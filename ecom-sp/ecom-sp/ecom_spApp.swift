//
//  ecom_spApp.swift
//  ecom-sp
//
//  Created by Tran Phat on 17/05/2023.
//

import Flutter
import FlutterPluginRegistrant
import SwiftUI

class FlutterDependencies: ObservableObject {
  let ecommFlutterEngine = FlutterEngine(name: "ecommerce_ui_engine")

  init() {
    // Prepare a Flutter engine in advance.
      ecommFlutterEngine.run()
      GeneratedPluginRegistrant.register(with: self.ecommFlutterEngine);
  }
}
@main
struct ecom_spApp: App {
    // flutterDependencies will be injected using EnvironmentObject
    @StateObject var flutterDependencies = FlutterDependencies()

    var body: some Scene {
      WindowGroup {
        ContentView()
          .environmentObject(flutterDependencies)
      }
    }
}
