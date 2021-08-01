//
//  ColorSlider.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 29.07.2021.
//

import SwiftUI

struct ColorSlider: View {
    
    @Binding var value: Double
    var color: Color
    
    var body: some View {
        
        Slider(value: $value, in: 0...255, step: 0.5)
            .accentColor(color)
    }
}

struct ColorSlider_Previews: PreviewProvider {
    static var previews: some View {
        ColorSlider(value: .constant(200), color: Color(.brown))
    }
}
