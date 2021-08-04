//
//  ColorTextField.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 29.07.2021.
//

import SwiftUI

struct ColorTextField: View {
    
    @Binding var bindingText: Double
    @State private var isPresentedAlert: Bool = false
    
    
    var body: some View {
        
        VStack{

            let colors = Gradient(colors: [ .green, .blue].shuffled())
            let linearGradient = LinearGradient(gradient: colors, startPoint: .leading, endPoint: .trailing)
            let size = CGSize(width: 70, height: 17)

//            геттер нужен для отображения текста из старого значения, сеттер для обновления значения
            let someNumber = Binding(
                get: { String(lround(self.bindingText))},
                set: { newValue in
                    guard !newValue.isEmpty else { return }
                    guard let newValue = Double(newValue) else { return }
                    if newValue > 0.0 && newValue < 255.0 {
                        self.bindingText = newValue
                    } else {
                        self.isPresentedAlert = true
                        self.bindingText = 0.0
                    }
                }
            )
            
            TextField("0.0", text: someNumber, onCommit:  {
                
                UIApplication.shared.endEditing()
                
            }) .alert(isPresented: $isPresentedAlert, content: {
                return Alert(title: Text("Wrong value!"), message: Text("You must write value from 0 to 255"))
            })
            .frameAndSize(cornerRadius: 20, size: size, linearGradient: linearGradient)
        }
    }
}


struct ColorTextField_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextField(bindingText: .constant(0))
    }
}
