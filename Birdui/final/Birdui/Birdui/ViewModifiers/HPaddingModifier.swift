//
//  HPaddingModifier.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct HPaddingModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.padding(.horizontal, 20.0)
    }
}
