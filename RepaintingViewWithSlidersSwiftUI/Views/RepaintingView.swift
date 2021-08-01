//
//  RepaintingView.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 29.07.2021.
//

import SwiftUI

struct RepaintingView: View {
    
    @Binding var red: Double
    @Binding var green: Double
    @Binding var blue: Double
    
    var body: some View {
        let colors = Gradient(colors: [ .red, .green].shuffled())
        let linearGradient = LinearGradient(gradient: colors, startPoint: .leading, endPoint: .trailing)
        
        Rectangle()
            .blur(radius: 50)
            .foregroundColor(Color(red: red/255, green: green/255, blue: blue/255))
            .overlay(Rectangle().strokeBorder(linearGradient, style: StrokeStyle(lineWidth: 10, lineCap: .round, dash: [10, 10])))
            .cornerRadius(30)
    }
}

struct RepaintingView_Previews: PreviewProvider {
    static var previews: some View {
        RepaintingView(red: .constant(50), green: .constant(170), blue: .constant(50))
    }
}
