//
//  ContentView.swift
//  WeSplit
//
//  Created by Oytun Tur on 29.01.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount = 0.0
    @State private var numberOfPeople = 2
    @State private var tipPercentage = 20
    
    let tipPercentages = [0, 10, 15, 20, 25, 30]
    
    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    TextField("Check Amount", value: $checkAmount, format: .currency(code: "TRY"))
                        
                }
            }
        }
        
        }
}

#Preview {
    ContentView()
}
