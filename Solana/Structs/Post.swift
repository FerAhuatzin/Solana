//
//  Post.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI

struct Post: View {
    var profilePicture: Image
    var username: String
    var post: Image
    var caption: String
    var body: some View {
        VStack {
            HStack {
                profilePicture
                Text(username)
                Spacer()
            }
            .padding()
            post
                .resizable()
                .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth/1.333)
            HStack {
                Image(systemName: "heart")
                Image(systemName: "message")
                Spacer()
            }
            .padding(.leading,20)
            .padding(.top,10)
            HStack {
                Text(caption)
                Spacer()
            }
            .padding(.leading,20)
            .padding(.top,10)
            
        }
        .padding()
    }
}
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post1"), caption: "Trabajando en Solana")
    }
}
