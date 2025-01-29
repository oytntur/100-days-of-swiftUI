//
//  ContentView.swift
//  WeSplit
//
//  Created by Oytun Tur on 29.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var tapCount = 0
    
    @State private var name = ""
    
    let students: [String] = ["Ali", "Veli", "Can", "Omer"]
    
    @State private var selectedStudent: String = "Ali"
    
    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }
                }
                Section{
                    TextField("Enter Your Name",text: $name)
                    Text("Your Name is: \(name)")
                }
                Section(){
                    Picker("Select Your Student",selection: $selectedStudent){
                        ForEach(students,id: \.self){
                            Text($0)
                        }
                    }
                }
                }
            }
            .navigationTitle("WeSplit")
            
            
        }
    }


#Preview {
    ContentView()
}
