//
//  ContentView.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

struct LoginView: View {
    @EnvironmentObject var user: UserManager
    
    @State private var name = ""
    @State private var isDisabledButton = true
    @State private var sizeName = "0"
    @State private var colorName = Color.red
    
    @AppStorage("name") var nameAppStorage: String = ""
    @AppStorage("isRegister") var isRegisterAppStorage: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name", text: $name)
                    .multilineTextAlignment(.center)
                    .onChange(of: name, perform: checkSizeName)
                Text(sizeName)
                    .foregroundColor(colorName)
            }
            Button(action: registerUser) {
                Image(systemName:  "checkmark.circle")
                Text("Ok")
            }.disabled(isDisabledButton)
            
        }
        .padding()
    }
    
    //Checking name size
    private func checkSizeName(_:String) {
        
        sizeName = "\(name.count)"
        if name.count>2 {
            colorName = Color.green
            isDisabledButton = false
        } else {
            colorName = Color.red
            isDisabledButton = true
        }
    }
    
    //Changing and saving state for openning WorkAndLogoutView
    private func registerUser() {
        user.name = name
        user.isRegister.toggle()
        nameAppStorage = name
        isRegisterAppStorage = true
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
