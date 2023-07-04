//
//  ContentView.swift
//  Reservations
//
//  Created by Kevin Wang on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.gray)
            Circle()
                .scale(x: 0.75, y: 0.75)
                .foregroundColor(Color.red)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text ("Hello, world!")
                HStack {
                    Button("One"){}
                    Button("Two"){}
                }
            }
            
        }
    }
}

#Preview {
    ContentView()
}
