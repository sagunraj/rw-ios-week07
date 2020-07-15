//
//  TextPostView.swift
//  Birdui
//
//  Created by Sagun Raj Lage on 7/13/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct TextPostView: View {
    
    @Binding var post: MediaPost
    
    @State var isShareSheetShown = false
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                MascotAndPostDetailsView(post: post)
                Spacer()
                Button(action: {
                    self.isShareSheetShown.toggle()
                }) {
                    Image(systemName: "square.and.arrow.up")
                }
                .modifier(ImageButtonModifier())
                Button(action: {
                    self.post.isLiked.toggle()
                }) {
                    Image(systemName: post.isLiked ? "heart.fill" : "heart")
                        .foregroundColor(.red)
                        .scaleEffect(post.isLiked ? 1.2 : 1)
                        .animation(Animation.easeInOut)
                }
                .modifier(ImageButtonModifier())
            }
            HStack {
                Text("\(self.post.textBody ?? "")")
                    .multilineTextAlignment(.leading)
                Spacer()
            }
        }
        .sheet(isPresented: $isShareSheetShown) {
            ShareSheet(activityItems: [self.post.textBody ?? "",
                                       self.post.userName,
                                       self.post.timestamp.getDateString(ofFormat: "d MMM, HH:mm"),
                                       self.post.uiImage ?? ""])
        }
    }
}

struct TextPostView_Previews: PreviewProvider {
    static var previews: some View {
        TextPostView(post: .constant(MediaPost(textBody: "Went to the Aquarium today :]",
                                               userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                               uiImage: UIImage(named: "octopus"))))
    }
}
