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
    
    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Text("Hello, World!")
                    Button("Tap Count: \(tapCount)") {
                        tapCount += 1
                    }
                }
                Section{
                    TextField("Enter Your Name",text: $name)
                    Text("Your Name is: \(name)")
                }
                ForEach(0..<100){ number in Text("Row:\(number+1)")
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
