//
//  FrameAndSizeModifier.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 31.07.2021.
//

import SwiftUI

struct FrameSizeAndGradientModifier: ViewModifier {
    
    let cornerRadius: CGFloat
    let size: CGSize
    let linearGradient: LinearGradient
    
    func body(content: Content) -> some View {
        content.frame(width: size.width, height: size.height)
            .cornerRadius(cornerRadius)
            .background(linearGradient)
            .multilineTextAlignment(.center)
            .shadow(color: .green, radius: 5)
    }
    
}


