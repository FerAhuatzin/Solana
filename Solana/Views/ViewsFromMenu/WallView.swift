//
//  WallView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct WallView: View {
    @State var posts: [PostData] = [PostData(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post1"), caption: "Trabajando en Solana", numberLikes: 0), PostData(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post2"), caption: "Trabajando en Solana X2", numberLikes: 0), PostData(profilePicture: Image(systemName: "person.fill"), username: "Fer20", post: Image("Post3"), caption: "Trabajando en Solana X3", numberLikes: 0)]
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("El muro")
                        .font(.custom("Roboto",size: 35))
                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    Spacer()
                    NavigationLink (destination: NewPostView()) {
                        Image(systemName: "plus")
                        Text("Nueva publicación")
                    }
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                }
                .padding()
                
                Spacer()
                
                ScrollView() {
                    ForEach(posts.reversed(), id: \.self) {post in
                        Post(profilePicture: post.profilePicture, username: post.username, post: post.post, caption: post.caption, numberLikes: post.numberLikes)
                    }
                }
            }
        }
        
    }
    
}

struct WallView_Previews: PreviewProvider {
    static var previews: some View {
        WallView()
    }
}
