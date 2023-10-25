//
//  ContentView.swift
//  StateTest1_LearnPeppe
//
//  Created by Giuseppe Sapienza on 25/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var result: Double = 0
    @State var selectedA: Double = 0
    @State var selectedB: Double = 0
    
    var body: some View {
        VStack {
            VStack {
                Text("A: ")
                +
                Text(selectedA, format: .number)
                    .fontWeight(.bold)
                
                Text("B: ")
                +
                Text(selectedB, format: .number)
                    .fontWeight(.bold)
                
                Text("Result: ")
                +
                Text(result, format: .number)
                    .fontWeight(.bold)
            }
            .font(.title)
                
            Spacer()
            HStack {
                Text("A: ")
                Button("1") {
                    selectedA = 1
                }
                Button("2") {
                    selectedA = 2
                }
                Button("3") {
                    selectedA = 3
                }
                Button("4") {
                    selectedA = 4
                }
                Button("5") {
                    selectedA = 5
                }
            }
            .buttonStyle(.bordered)
            
            HStack {
                Text("B: ")
                Button("1") {
                    selectedB = 1
                }
                Button("2") {
                    selectedB = 2
                }
                Button("3") {
                    selectedB = 3
                }
                Button("4") {
                    selectedB = 4
                }
                Button("5") {
                    selectedB = 5
                }
            }
            .buttonStyle(.bordered)
            
            HStack {
                Button {
                    result = selectedA + selectedB
                } label: {
                    Image(systemName: "plus")
                        .frame(height: 30)
                }
                
                Button {
                    result = selectedA - selectedB
                } label: {
                    Image(systemName: "minus")
                        .frame(height: 30)
                }
                
                Button {
                    result = selectedA * selectedB
                } label: {
                    Image(systemName: "multiply")
                        .frame(height: 30)
                }
                
                Button {
                    result = selectedA / selectedB
                } label: {
                    Image(systemName: "divide")
                        .frame(height: 30)
                }
                
                Button {
                    result = 0
                    selectedA = 0
                    selectedB = 0
                } label: {
                    Image(systemName: "trash")
                        .frame(height: 30)
                }
            }
            .padding(.top)
            .buttonStyle(.borderedProminent)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
