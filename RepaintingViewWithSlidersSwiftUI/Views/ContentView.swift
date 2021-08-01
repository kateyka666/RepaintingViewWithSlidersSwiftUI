//
//  ContentView.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 29.07.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redCount: Double = 255
    @State private var greenCount: Double = 213
    @State private var blueCount: Double = 138
    
    var body: some View {
        
        
        VStack(spacing: 30){
            
            RepaintingView(red: $redCount, green: $blueCount, blue: $greenCount)
            Divider()
            HStack{
                VStack(spacing: 22){
                    let arrayOfColorCounts = [redCount, greenCount, blueCount]
                    ForEach(arrayOfColorCounts, id: \.self) { color in
                        ColorCountLabel(textForLabel: color)
                    }
                }
                Spacer()
                VStack{
                    ColorSlider(value: $redCount, color: .red)
                    ColorSlider(value: $greenCount, color: .green)
                    ColorSlider(value: $blueCount, color: .blue)
                }
                Spacer()
                VStack(spacing:22){
                    ColorTextField(bindingText:  $redCount)
                    ColorTextField(bindingText:  $greenCount)
                    ColorTextField(bindingText:  $blueCount)
                }
            }
            
            Spacer()
            
        }.padding()
        .onTapGesture {
            UIApplication.shared.endEditing()
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
