//
//  PostList.swift
//  Outlandia
//
//  Created by GREGORY CUESTA on 4/16/23.
//

import SwiftUI

struct PostList: View {
    @EnvironmentObject var viewModel: OutlandiaPostsViewModel
    @State var showCamera = false
    @State var showPhotos = false
    
    var body: some View {
        
        ZStack(alignment: .bottom) {
            List {
                ForEach(viewModel.outlandiaPosts) { post in
                    PostDetail(post: post)
                        .listRowInsets(.init(top: 10,
                                             leading: 0,
                                             bottom: 10,
                                             trailing: 0))
                }
            }
            .listStyle(.inset)
            
            HStack(spacing: 5) {
                Button {
                    self.showCamera = true
                } label: {
                    Label("Open Camera", systemImage: "camera.fill")
                        .labelStyle(.iconOnly)
                        .foregroundColor(.blue)
                        .font(.system(size: 45))
                }
                .sheet(isPresented: $showCamera) {
                    CameraPicker(viewModel: viewModel)
                }
                
                Button {
                    self.showPhotos = true
                } label: {
                    Label("Open Library", systemImage: "plus.app.fill")
                        .labelStyle(.iconOnly)
                        .foregroundColor(.blue)
                        .font(.system(size: 47))
                }
                .sheet(isPresented: $showPhotos) {
                    ImagePicker(viewModel: viewModel)
                }
            }
        }
        
    }
}


struct PostList_Previews: PreviewProvider {
    static let viewModel = OutlandiaPostsViewModel()
    
    static var previews: some View {
        PostList().environmentObject(viewModel)
    }
}
