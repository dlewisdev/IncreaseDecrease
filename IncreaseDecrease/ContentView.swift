//
//  ContentView.swift
//  IncreaseDecrease
//
//  Created by Danielle Lewis on 12/11/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var number: Int = 0
    @State var isIncreasing: Bool = true
    
    var body: some View {
        VStack(spacing: 50) {
            Text("\(number)")
                .font(.system(size: 100))
            
            Button {
                if isIncreasing {
                    increase()
                } else {
                    decrease()
                }
            } label: {
                Text("Press Me")
                    .font(.largeTitle)
                    .padding()
                    .overlay(
                        RoundedRectangle(cornerRadius: 12)
                            .stroke(lineWidth: 2.0)
                    )
            }
            
        }
        .padding()
    }
    
    func increase() {
        var value = Int.random(in: 1...10)
        number += value
        if number > 50 {
            isIncreasing = false
        }
        
    }
    
    func decrease() {
        var value = Int.random(in: 1...10)
        number -= value
        if number < 0 {
            isIncreasing = true
        }
        
    }
}

#Preview {
    ContentView()
}
