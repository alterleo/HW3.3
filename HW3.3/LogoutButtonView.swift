//
//  LogoutButtonView.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

struct LogoutButtonView: View {
    
    @EnvironmentObject var user: UserManager
    
    @AppStorage("name") var nameAppStorage: String = ""
    @AppStorage("isRegister") var isRegisterAppStorage: Bool = false
    
    var body: some View {
        Button(action: logOut) {
            Text("LogOut")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
    
    //saving state for oppening LoginView
    private func logOut() {
        user.isRegister.toggle()
        isRegisterAppStorage = false
    }
}

struct LogoutButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButtonView()
            .environmentObject(UserManager())
    }
}
