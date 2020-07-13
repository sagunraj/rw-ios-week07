//
//  PostListView.swift
//  Birdui
//
//  Created by Audrey Tam on 4/7/20.
//  Copyright © 2020 Razeware. All rights reserved.
//

import SwiftUI

struct PostListView: View {
    
    @Binding var posts: [MediaPost]
    var viewModel: PostViewModel
    
    var body: some View {
        List {
            ForEach(viewModel.posts) { index in
                PostView(post: self.$posts[index])
            }
            .onDelete(perform: viewModel.deletePost)
        }
    }
}

struct PostListView_Previews: PreviewProvider {
    static var previews: some View {
        PostListView(posts: .constant([MediaPost(textBody: "Went to the Aquarium today :]",
                                                 userName: "Audrey", timestamp: Date(timeIntervalSinceNow: -9876),
                                                 uiImage: UIImage(named: "octopus"))]),
                     viewModel: PostViewModel())
    }
}
