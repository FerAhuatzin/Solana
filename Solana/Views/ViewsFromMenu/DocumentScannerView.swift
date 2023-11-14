//
//  DocumentScannerView.swift
//  Solana
//
//  Created by Ricardo Ladislao Martinez Cabrera on 14/11/23.
//

import SwiftUI
    import UniformTypeIdentifiers
    import MobileCoreServices

struct DocumentScannerView: View {
    let definitions = CopingDefinitions()
    
    @State private var documentURL: URL?
    @State private var isDocumentPickerPresented = false
    @State private var selectedDocument: String = "Ningún documento seleccionado"
    
    var body: some View {
        
        
        VStack{
            Text("Documentos")
                .font(.custom("Roboto",size: 40))
                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
            Spacer()
            
            List() {
                CopingStrategy(imageName: "lungs.fill", copingName: "rayosx.pdf", definition: definitions.physicalActiviy)
                CopingStrategy(imageName: "book.closed.fill", copingName: "  recetamédica.pdf", definition: definitions.socialAccompaniment)
                CopingStrategy(imageName: "book.closed.fill", copingName: "  indicaciones.pdf", definition: definitions.distraction)
                CopingStrategy(imageName: "lungs.fill", copingName: "perfilHormonal.pdf", definition: definitions.relaxation)
                CopingStrategy(imageName: "lungs.fill", copingName: "químicaSanguínea.pdf", definition: definitions.breathing)
                CopingStrategy(imageName: "book.closed.fill", copingName: "  recetaOncólogo.pdf", definition: definitions.health)
                CopingStrategy(imageName: "book.closed.fill", copingName: "  técnicasDeRelajación.pdf", definition: definitions.religion)
            }
            
            
            
        
            
            
            VStack {
                Text("Documento Seleccionado:")
                    .font(.headline)
                    .padding()
                
                Text(selectedDocument)
                    .padding()
                
                Button(action: {
                    // Aquí puedes simular la lógica de selección de un documento
                    // Por ejemplo, podrías abrir un selector de archivos o realizar alguna otra acción.
                    selectedDocument = "ResonanciaMagnética.pdf" // Nombre del documento seleccionado
                }) {
                    Text("Seleccionar Documento")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
            
            
            
            /*Button(action: {
                print("Botón presionado")
            }){
                Image(systemName: "plus")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(.white)
                    .padding(16)
                    .background(Color.blue)
                    .clipShape(Circle())
            }*/
        }
    }
}
struct DocumentScannerView_Previews: PreviewProvider {
    static var previews: some View {
        DocumentScannerView()
    }
}








/*@State private var selectedDocument: String = "Ningún documento seleccionado"

    VStack{
        Text("Documentos")
            .font(.custom("Roboto",size: 40))
            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
        Spacer()
        
        
        
        
        
        
        
        

            VStack {
                Text("Documento Seleccionado:")
                    .font(.headline)
                    .padding()
                
                Text(selectedDocument)
                    .padding()
                
                Button(action: {
                    // Aquí puedes simular la lógica de selección de un documento
                    // Por ejemplo, podrías abrir un selector de archivos o realizar alguna otra acción.
                    selectedDocument = "Documento.pdf" // Nombre del documento seleccionado
                }) {
                    Text("Seleccionar Documento")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        
        
        
        Button(action: {
            print("Botón presionado")
        }){
            Image(systemName: "plus")
                .font(.custom("Roboto",size: 40))
                .foregroundColor(.white)
                .padding(16)
                .background(Color.blue)
                .clipShape(Circle())
        }
    }*/
