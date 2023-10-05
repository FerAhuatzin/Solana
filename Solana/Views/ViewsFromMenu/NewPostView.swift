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
    @Binding var posts: [Post]//al subir publicacion posts.append(ObjetoCreado)
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
                Button("Publicar"){
                    if let imageData = image, let uiImage = UIImage(data: imageData) {
                            // Crear una instancia de Image a partir de la imagen seleccionada
                            let selectedImage = Image(uiImage: uiImage)

                            // Crear un objeto Post con la imagen seleccionada
                            let newPost = Post(
                                profilePicture: Image(systemName: "person.fill"),
                                username: "username",
                                post: selectedImage,
                                caption: caption,
                                numberLikes: 0
                            )

                            // Agregar el nuevo Post al arreglo de posts
                            posts.append(newPost)

                            // Cerrar la vista
                            dismiss()
                        } else {
                            // Manejar el caso en el que no se ha seleccionado ninguna imagen
                            // Puedes mostrar una alerta o realizar otra acción aquí.
                            dismiss()
                        }
                }
                
                    
            }
            
        }
    }
}

struct NewPostView_Previews: PreviewProvider {
    static var previews: some View {
        NewPostView()
    }
}
