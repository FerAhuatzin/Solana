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
    @State private var isKeyboardHidden = true
    @State private var confirmingChanges = false
    @State private var closingSession = false
    //let imagePickerController = UIImagePickerController()
    //imagePickerController.sourceType = .camera
    //imagePickerController.sourceType = .photoLibrary
    var body: some View {
        NavigationStack{
            ZStack {
                
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
                        
                    }.task(id: item){
                        
                        if let data = try! await item?.loadTransferable(type: Data.self){
                            self.avatar = data
                        }
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
                        
                        
                        
                        Button("Guardar cambios")
                        {
                            confirmingChanges = true
                        }
                        .frame(width: 200, height: 50.0)
                        .foregroundColor(.white)
                        .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                        .background(Color.black.opacity(0.05))
                        .font(.custom("Roboto", size: 20))
                        .cornerRadius(10)
                        .padding(.bottom,200)
                        
                        Button(action: {
                            closingSession = true
                        }, label: {
                            VStack{
                                Image(systemName: "rectangle.portrait.and.arrow.right")
                                    .resizable()
                                    .frame(width:30, height:30)
                                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    
                                Text("Cerrar sesión")
                                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .padding(.bottom)
                            }
                        })
    
                        
                    }
                }
                .gesture(TapGesture().onEnded { _ in
                            self.isKeyboardHidden = true
                            UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
                        })
                
                if confirmingChanges || closingSession {
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: .infinity, height: .infinity)
                        .foregroundColor(Color.black.opacity(0.7))
                        .ignoresSafeArea()
                        
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color.white)
                }
                
                if confirmingChanges {
                    VStack {
                        Text("Confirmar cambios")
                            .foregroundColor(.black)
                            .font(.system(size:25))
                            .padding(.top,20)
                        HStack {
                            NavigationLink(destination: MenuView(username: username))
                            {
                                Text("Si")
                                    .frame(width: 100, height: 50.0)
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .background(Color.black.opacity(0.05))
                                    .font(.custom("Roboto", size: 20))
                                    .cornerRadius(10)
                            }
                            
                            
                            Button ("No") {
                                confirmingChanges = false
                            }
                                .frame(width: 100, height: 50.0)
                                .foregroundColor(.white)
                                .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                                .background(Color.black.opacity(0.05))
                                .font(.custom("Roboto", size: 20))
                                .cornerRadius(10)
                        }
                        .padding(.top,60)
                    }
                }
                
                if closingSession {
                    VStack {
                        Text("Cerrar sesión")
                            .foregroundColor(.black)
                            .font(.system(size:25))
                            .padding(.top,20)
                        HStack {
                            NavigationLink(destination: InitialView())
                            {
                                Text("Si")
                                    .frame(width: 100, height: 50.0)
                                    .foregroundColor(.white)
                                    .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .background(Color.black.opacity(0.05))
                                    .font(.custom("Roboto", size: 20))
                                    .cornerRadius(10)
                            }
                            
                            
                            Button ("No") {
                                closingSession = false
                            }
                                .frame(width: 100, height: 50.0)
                                .foregroundColor(.white)
                                .background(Color(red: 0.338, green: 0.44, blue: 0.962))
                                .background(Color.black.opacity(0.05))
                                .font(.custom("Roboto", size: 20))
                                .cornerRadius(10)
                        }
                        .padding(.top,60)
                    }
                }
                
                
                

                
            } //ZSTACK
            
        }
    }
}

struct profileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(username: "fernando", email: "fernando@gmail.com", city: "Puebla")
    }
}



