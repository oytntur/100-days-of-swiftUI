//
//  ContentView.swift
//  WeSplit
//
//  Created by Oytun Tur on 29.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State var tapCount = 0
    
    
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
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
                Text("Hello, World!")
            }
            .navigationTitle("WeSplit")
        }
    }
}

#Preview {
    ContentView()
}
