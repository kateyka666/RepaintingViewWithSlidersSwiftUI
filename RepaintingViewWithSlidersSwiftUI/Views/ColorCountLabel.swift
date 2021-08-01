//
//  ColorCountLabel.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 29.07.2021.
//

import SwiftUI

struct ColorCountLabel: View {
    
    var textForLabel: Double
    
    var body: some View {
        Text(String(lround(textForLabel)))
            .font(.subheadline)
    }
}

struct ColorCountLabel_Previews: PreviewProvider {
    static var previews: some View {
        ColorCountLabel(textForLabel: 124)
    }
}
