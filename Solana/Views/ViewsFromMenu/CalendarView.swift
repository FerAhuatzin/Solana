//
//  CalendarView.swift
//  Solana
//
//  Created by Fernando Ahuatzin Gallardo on 13/11/23.
//

import SwiftUI

struct CalendarView: View {
    @State var selected: [Bool] = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State var notes: [[String]] = [[],[],[],[],[],[], [],[],[],[],[],[], [],[],[],[],[],[], [],[],[],[],[],[], [],[],[],[],[],[], []]
    @State private var addNote =  false
    @State private var addingNote =  false
    @State private var daySelected = 1
    @State private var note = ""
    @State private var toNote = "Síntoma"
    var body: some View {
        NavigationStack {
            VStack {
                Text("Calendario")
                    .font(.custom("Roboto",size: 40))
                    .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                Text("Noviembre 2023") // Puedes cambiar esto dinámicamente
                    .font(.title)
                
                LazyVGrid(columns: Array(repeating: GridItem(), count: 7), spacing: 8) {
                    ForEach(1...30, id: \.self) { day in //cambiar segun mes
                        Button(action: {
                            
                            selected = Array(repeating: false, count: 31)
                            selected[day] = true
                            daySelected = day-1
                            
                        }) {
                            if selected[day] == true {
                                Text("\(day)")
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .background(selected[day] ? Color(red: 0.338, green: 0.44, blue: 0.962) : Color.white)
                                    .foregroundColor(selected[day] ? .white : .black)
                                    .border(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .border(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .font(.custom("Roboto",size: 15))
                                    .cornerRadius(2)
                            }
                            else {
                                Text("\(day)")
                                    .padding()
                                    .frame(width: 50, height: 50)
                                    .background(Color.white)
                                    .foregroundColor(.black)
                                    .border(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    .font(.custom("Roboto",size: 15))
                                    .cornerRadius(2)
                            }
                            

                        }
                    }
                }
                .padding(.horizontal)
                
                ScrollView {
                    ForEach(notes[daySelected], id: \.self) {note in
                        HStack {
                            Image(systemName: "circle.fill")
                                .resizable()
                                .frame(width:10, height:10)
                            Text(note)
                                .frame(width: .infinity)
                            Spacer()
                        }
                        .padding()
                    }
                }
                
                Spacer()
                HStack {
                        
                        Button(action: {
                            addNote = !addNote
                            addingNote = false
                            note = ""
                        }, label: {
                            Image(systemName: "plus.circle.fill")
                                .resizable()
                                .frame(width:40, height:40)
                                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                
                                
                        })
                        if addNote {
                            HStack {
                                Button(action: {
                                    toNote = "Síntoma"
                                    addingNote = true
                                    note = ""

                                }, label: {
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width:10, height:10)
                                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    Text("Síntoma")
                                        
                                        
                                })
                                
                                Button(action: {
                                    toNote = "Cita"
                                    addingNote = true
                                    note = ""

                                }, label: {
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width:10, height:10)
                                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    Text("Cita")
                                        
                                        
                                })
                                
                                Button(action: {
                                    toNote = "Medicamento"
                                    addingNote = true
                                    note = ""
                                   
                                }, label: {
                                    Image(systemName: "circle.fill")
                                        .resizable()
                                        .frame(width:10, height:10)
                                        .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                                    Text("Medicamento")
                                        
                                        
                                })
                            }
                            
                            .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                        }
                        

                    Spacer()
                    

                }
                .padding()
                
                if addingNote {
                    HStack {

                        TextField (toNote,text: $note)
                            .disableAutocorrection(true)
                            .autocapitalization(.none)
                            .padding(8)
                            .frame(width: 300, height: 40.0)
                            .foregroundColor(.black)
                            .background(Color.black.opacity(0.05))
                            .font(.custom("Roboto", size: 15))
                            .cornerRadius(10)
                        
                        Button(action: {
                            addingNote = false
                            addNote = false
                            uploadNote(note: note, day: daySelected, type: toNote)
                        }, label: {
                            Image(systemName: "checkmark.circle.fill")
                                .resizable()
                                .frame(width:30, height:30)
                                .foregroundColor(Color(red: 0.338, green: 0.44, blue: 0.962))
                
                        })
                    }
                }
                
                
                
                
            

            } //end VStack
            
        } //end navigationStack
        
        
        
    }
    
    func uploadNote (note: String, day: Int, type: String) {
        
        notes[day].append(type + ": " + note)
        self.note = ""
        
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
