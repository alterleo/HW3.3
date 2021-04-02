//
//  StartButtonView.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import SwiftUI

struct StartButtonView: View {
    @EnvironmentObject var timer: TimeCounter
    
    var body: some View {
        Button(action: { timer.startTimer() }) {
            Text("\(timer.buttonTitle)")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(Color.red)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.black, lineWidth: 4))
    }
}

struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .environmentObject(TimeCounter())
    }
}
