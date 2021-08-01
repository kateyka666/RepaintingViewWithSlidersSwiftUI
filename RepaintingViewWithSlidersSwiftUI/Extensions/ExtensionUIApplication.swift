//
//  ExtensionUIApplication.swift
//  RepaintingViewWithSlidersSwiftUI
//
//  Created by Екатерина Боровкова on 31.07.2021.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
