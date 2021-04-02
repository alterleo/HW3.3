//
//  StarterView.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

struct StarterView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if !user.isRegister {
                LoginView()
            } else {
                WorkAndLogoutView()
            }
        }
    }
}

struct StarterView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .environmentObject(UserManager())
    }
}
