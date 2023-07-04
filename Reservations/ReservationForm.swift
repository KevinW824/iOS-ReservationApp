//
//  ReservationForm.swift
//  Reservations
//
//  Created by Kevin Wang on 7/3/23.
//

import SwiftUI

struct ReservationForm: View {
    @State var customerName: String = ""
    var body: some View {
        Form {
            TextField("Type Your Name", text: $customerName, onEditingChanged: { status in print(status)})
                .onChange(of: customerName, initial: true, {print(customerName)})
                .onSubmit {
                    print("submit")
                }
                .padding()
        }
    }
}

#Preview {
    ReservationForm()
}
