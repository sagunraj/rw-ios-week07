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
    
    @Binding var posts: [MediaPost]
    @Binding var activeSheet: ActiveSheet
    @Binding var isModalShown: Bool
    
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
            Spacer()
            Button(action: {
                self.activeSheet = .likedList
                self.isModalShown.toggle()
            }) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                    .font(Font.title)
            }
        }
    }
    
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(posts: .constant([MediaPost(textBody: "Went to the Aquarium today :]",
                                               userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                               uiImage: UIImage(named: "octopus"))]), activeSheet: .constant(.likedList), isModalShown: .constant(false))
    }
}
