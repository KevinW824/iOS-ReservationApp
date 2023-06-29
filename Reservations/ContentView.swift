//
//  ContentView.swift
//  Reservations
//
//  Created by Kevin Wang on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    @State var personCount: Int = 1
    @State var inputValue:String = ""
    
    var body: some View {
        VStack {
            Text("Little Lemon")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Reservations")
            Stepper {
                Text("Reservation for: \(personCount)")
            } onIncrement: {
                personCount += 1
            } onDecrement: {
                personCount = (personCount == 1) ? 1 : personCount - 1
            }
            TextField("Type Your Name", text: $inputValue)
                .onChange(of: inputValue, initial: true, {print(inputValue)})
                .onSubmit {
                    print("submit")
                }
                .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView(personCount: 1)
}
