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
    @State private var tipPercentage = 10
    
    let tipPercentages = [0, 5, 10, 20, 30]
    
    
    var body: some View {
        NavigationStack{
            Form {
                Section{
                    TextField("Check Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "TRY"))
                        .keyboardType(.decimalPad)
                    
                    // Picker default shows for because of indexing picker uses number of people as index if we dont provide id
                    Picker("Number Of People",selection: $numberOfPeople){
                        ForEach(2...100, id: \.self){
                            Text("\($0) Person")
                        }
                    }
                    .pickerStyle(.navigationLink)
      
                }
                
                Section("How much do you want to tip?"){
                    Picker("Tip Percentage",selection: $tipPercentage){
                        ForEach(tipPercentages, id:\.self){
                            Text($0, format:.percent)
                        }
                    }.pickerStyle(.segmented)
                    
                }
                
            }.navigationTitle("WeSplit")
        }
        
        }
}

#Preview {
    ContentView()
}
