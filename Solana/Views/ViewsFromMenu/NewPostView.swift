//
//  NewPostView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 27/08/23.
//

import SwiftUI
import PhotosUI

struct NewPostView: View {
    
    @State private var image: Data?
    @State private var item: PhotosPickerItem?
    @State var caption: String = ""
    @Binding var posts: [PostData]//al subir publicacion posts.append(ObjetoCreado)
    @Environment(\.dismiss) var dismiss
    @State private var selectedImage: UIImage?

    var body: some View {
        NavigationStack{
            VStack{
                Text("Nueva publicación")
                    .font(.custom("Roboto", size:40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                HStack{
                    PhotosPicker(selection: self.$item, matching: .images, label: {
                        if let data = image, let uiImage = UIImage(data: data){
                            VStack{
                                Image(uiImage: uiImage)
                                    .resizable()
                                    .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth/1.333)
                                Text("Selecciona tu foto...")
                                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                            }
                            
                        }else{
                            VStack{
                                ZStack{
                                    Rectangle()
                                        .frame(width: UIScreen.screenWidth, height: UIScreen.screenWidth/1.333)
                                        .foregroundColor(Color.black.opacity(0.2))
                                    Image(systemName: "photo")
                                        .resizable()
                                        .frame(width: 60, height: 50)
                                        .foregroundColor(.white)
                                }
                                HStack{
                                    Text("Selecciona tu foto....")
                                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                        .padding(.leading)
                                       
                                    Spacer()
                                }
                            }
                        }
                    })
                    
                }.task(id: item){
                    
                    if let data = try! await item?.loadTransferable(type: Data.self){
                        self.image = data
                    }
                }
                Divider()
                TextField("Agrega un pie de foto",text: $caption)
                    .padding(.leading)
                Spacer()
                Button("Publicar") {
                            if let imageData = image, let uiImage = UIImage(data: imageData) {
                                // Crear un objeto PostData con la imagen seleccionada
                                let newPostData = PostData(
                                    profilePicture: Image(systemName: "person.fill"),
                                    username: "username",
                                    post: Image(uiImage: uiImage), // Convierte UIImage a Image
                                    caption: caption,
                                    numberLikes: 0
                                )

                                // Agregar el nuevo PostData al arreglo de posts
                                posts.append(newPostData)

                                // Cerrar la vista
                                dismiss()
                            } else {
                                // Manejar el caso en el que no se ha seleccionado ninguna imagen
                                // Puedes mostrar una alerta o realizar otra acción aquí.
                                dismiss()
                        }
                }
                .frame(width: 125.0, height: 50.0)
                .foregroundColor(.white)
                .font(.custom("Roboto", size: 20))
                .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                .cornerRadius(10)
                .padding(.top,40)
                .padding(.bottom,20)
                    
            }
            
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    @State static var posts: [PostData] = [
            PostData(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post1"), caption: "Trabajando en Solana", numberLikes: 0),
            PostData(profilePicture: Image(systemName: "person.fill"), username: "Manu23", post: Image("Post2"), caption: "Trabajando en Solana X2", numberLikes: 0),
            PostData(profilePicture: Image(systemName: "person.fill"), username: "Fer20", post: Image("Post3"), caption: "Trabajando en Solana X3", numberLikes: 0)
        ]

    static var previews: some View {
        NewPostView(posts: $posts)
    }
}
