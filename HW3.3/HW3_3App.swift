//
//  HW3_3App.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

@main
struct HW3_3App: App {
    @StateObject private var user = UserManager()
    
    @AppStorage("name") var nameAppStorage: String = ""
    @AppStorage("isRegister") var isRegisterAppStorage: Bool = false
    
    
    var body: some Scene {
        WindowGroup {
            StarterView()
                .onAppear() {
                    //Starting initialization from UserDefaults
                    user.isRegister = isRegisterAppStorage
                    user.name = nameAppStorage
                }
                .environmentObject(user)
        }
    }
}
