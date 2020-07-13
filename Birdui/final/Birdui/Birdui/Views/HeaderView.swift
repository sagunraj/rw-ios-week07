//
//  HeaderView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct HeaderView: View {
    
    let mascotImageSize: CGFloat = 50
    
    var body: some View {
        HStack {
            Image("mascot_swift-badge")
                .resizable()
                .scaledToFit()
                .frame(width: self.mascotImageSize,
                       height: self.mascotImageSize)
            Spacer()
            Text("Home")
                .font(Font.system(.title))
                .padding(.leading, mascotImageSize * -1)
            Spacer()
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
