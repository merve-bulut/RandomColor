//
//  ContentView.swift
//  RandomColor
//
//  Created by Merve Bulut on 6.03.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var backgroundColor = Color.white
    
    var body: some View {
        ZStack {
            backgroundColor
                .ignoresSafeArea()
            
            Text("Ekrana Dokun")
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding()
        }
        .onTapGesture {
            backgroundColor = Color(
                red: .random(in: 0...1),
                green: .random(in: 0...1),
                blue: .random(in: 0...1)

            )
        }
    }
}

#Preview {
    ContentView()
}
