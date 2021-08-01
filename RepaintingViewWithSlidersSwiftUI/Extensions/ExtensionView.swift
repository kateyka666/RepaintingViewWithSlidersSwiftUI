//
//  ExtensionView.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 31.07.2021.
//

import SwiftUI

extension View {
    func frameAndSize(cornerRadius: CGFloat, size: CGSize,linearGradient: LinearGradient) -> some View{
        modifier(FrameSizeAndGradientModifier(cornerRadius: cornerRadius, size: size, linearGradient: linearGradient))
    }
}
