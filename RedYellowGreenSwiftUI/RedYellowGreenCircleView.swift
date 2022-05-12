//
//  RedYellowGreenCircleView.swift
//  RedYellowGreenSwiftUI
//
//  Created by Александра Лесовская on 12.05.2022.
//

import SwiftUI

struct RedYellowGreenCircleView: View {
    
    let color: Color
    var opacity: Double
    
    var body: some View {
            Circle()
            .foregroundColor(color).opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct RedYellowGreenCirclesView_Previews: PreviewProvider {
    static var previews: some View {
        RedYellowGreenCircleView(color: .red, opacity: 0.3)
    }
}
