//
//  profileView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 26/08/23.
//

import SwiftUI
import PhotosUI


struct ProfileView: View {
    
    @State var username: String
    @State var email: String
    @State var city: String
    @State private var avatar: Data?
    @State private var item: PhotosPickerItem?
    //let imagePickerController = UIImagePickerController()
    //imagePickerController.sourceType = .camera
    //imagePickerController.sourceType = .photoLibrary
    var body: some View {
        NavigationStack{
            VStack {
                Text("Tu perfil")
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .font(.system(size:40))
                    .padding(.top,20)
                
                
                
                HStack{
                    PhotosPicker(selection: self.$item, matching: .images, label: {
                        if let data = avatar, let uiImage = UIImage(data: data){
                            Image(uiImage: uiImage)
                                .resizable()
                                .clipShape(Circle())
                                .frame(width: 80, height: 80)
                            
                        }else{
                            Image(systemName: "person.circle.fill")
                                .resizable()
                                .frame(width: 80, height: 80)
                        }
                    })
                    
                }
                
                
                Text("Nombre de usuario")
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .font(.custom("Roboto", size: 20))
                TextField("Nombre de usuario", text: $username)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)
                Text("Correo electrónico")
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .font(.custom("Roboto", size: 20))
                TextField("Correo electronico", text: $email)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)
                Text("Ciudad")
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                    .font(.custom("Roboto", size: 20))
                TextField("Ciudad", text: $city)
                    .frame(width: 300, height: 50.0)
                    .foregroundColor(.black)
                    .background(Color.black.opacity(0.05))
                    .font(.custom("Roboto", size: 20))
                    .cornerRadius(10)
                    .padding(.bottom,20)
                
                VStack{
                    NavigationLink(destination: MenuView(username: username))
                    {
                        Text("Guardar cambios")
                            .frame(width: 200, height: 50.0)
                            .foregroundColor(.white)
                            .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 20))
                            .cornerRadius(10)
                            .padding(.bottom,200)
                    }
                    
                    NavigationLink(destination: InitialView()){
                        VStack{
                            Image("cerrarSesion")
                                .resizable()
                                .frame(width:50, height:50)
                                .foregroundColor(Color.blue)
                                
                            Text("Cerrar sesión")
                                .foregroundColor(Color.blue)
                                .padding(.bottom)
                        }
                    }
                    
                }
            }
        }
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(username: "fernando", email: "fernando@gmail.com", city: "Puebla")
    }
}
