//
//  CommentView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 03/10/23.
//

import SwiftUI

struct CommentView: View {
    @State var comment = ""
    @State var comments: [String] = ["bonita foto:)"]
    var body: some View {
        VStack {
            Text("Comentarios")
                .fontWeight(.bold)
                .font(.custom("RobotoBold", size: 35))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
            ScrollView  {
                ForEach(comments, id: \.self) {comment in
                    HStack {
                        Image(systemName: "person.fill")
                            .padding(.leading,10)
                        Text(comment)
                            .padding()
                            .foregroundColor(.black)
                            .padding(.horizontal,16)
                        Spacer()
                    } //end HStack
                    Divider()
                } //end ForEach
            } //end scrollView
            Spacer()
            HStack {
                Image(systemName: "person.fill")
                    .padding(.leading,10)
                TextField("Comenta algo...", text: $comment)
                    .padding()
                    .background(.black.opacity(0.05))
                    .cornerRadius(10)
                    .onSubmit {
                        makeComment(comment: comment)
                    }

            }
            .padding()
        }
        
    }
    
    func makeComment (comment: String) {
        withAnimation {
            comments.append(comment)
            self.comment = ""
        }
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
