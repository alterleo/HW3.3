//
//  WorkAndLogoutView.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

struct WorkAndLogoutView: View {
    
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Spacer()
            Text("Hi, \(user.name)!")
                .font(.title)
                .offset(x: 0, y: -150)
            Text("\(timer.counter)")
                .font(.largeTitle)
                .offset(x: 0, y: -100)
                .padding()
            StartButtonView()
                .environmentObject(timer)
            Spacer()
            LogoutButtonView()
            
        }
    }
}

struct WorkAndLogoutView_Previews: PreviewProvider {
    static var previews: some View {
        WorkAndLogoutView()
            .environmentObject(UserManager())
    }
}

