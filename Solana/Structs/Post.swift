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
    @State var numberLikes: Int //esto despues lo va a recibir de la basde de datos
    @State var like: Image = Image(systemName: "heart")
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
                Button {
                    likeMechanism()
                } label: {
                    like
                        .foregroundColor(.black)
                }
                NavigationLink (destination: CommentView()) {
                    Image(systemName: "message")
                }
                .foregroundColor(.black)
                Spacer()
            }
            .padding(.leading,20)
            .padding(.top,10)
            .padding(.bottom,5)
            HStack {
                Text("\(numberLikes) me gustas")
                Spacer()
            }
            .padding(.leading,20)
            HStack {
                Text(caption)
                Spacer()
            }
            .padding(.leading,20)
            .padding(.top,10)
            HStack {
                NavigationLink (destination: CommentView()) {
                    Text("comentarios...")
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            .padding(.leading,20)
            .padding(.top,10)
            
        }
        .padding()
    }
    
    //cuando sea mas complejo debe de haber una variable que defina si el usuario ya le dio like o no, y cuando le de like y lo quite actualizar el numero total de likes
    func likeMechanism () {
        if (numberLikes==1) {
            numberLikes = 0
            like = Image(systemName: "heart")
        }//end if
        else {
            numberLikes = 1
            like = Image(systemName: "heart.fill")
        } //end else
    }
}
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Post(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post1"), caption: "Trabajando en Solana", numberLikes: 0)
    }
}
