//
//  ContentView.swift
//  RedYellowGreenSwiftUI
//
//  Created by Александра Лесовская on 12.05.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counterForButton = 0
    
    var body: some View {
        VStack(spacing: 20) {
            RedYellowGreenCircleView(color: .red, opacity: counterForButton == 1 ? 1 : 0.3)
            RedYellowGreenCircleView(color: .yellow, opacity: counterForButton == 2 ? 1 : 0.3)
            RedYellowGreenCircleView(color: .green, opacity: counterForButton == 3 ? 1 : 0.3)
            Spacer(minLength: UIScreen.main.bounds.height * 0.15)
            Button(action: runButtonPressed) {
                Text(counterForButton == 0 ? "START" : "NEXT")
                    .frame(width: 200, height: 60)
                    .font(.system(size: 50).bold())
                    .foregroundColor(.white)
                    .background(Color.gray)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.white, lineWidth: 4))
                    .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.black)
    }
    
    private func runButtonPressed() {
        switch counterForButton {
        case 0...2:
            counterForButton += 1
        default:
            counterForButton = 1
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
