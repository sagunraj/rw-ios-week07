//
//  ImageButtonModifier.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/15/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct ImageButtonModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .buttonStyle(BorderlessButtonStyle())
            .frame(width: 40.0, height: 40.0)
    }
    
}
