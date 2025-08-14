//
//  alert.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct AlertsView: View {
    @State private var alerts = [
        "Notify me if Haaland scores 2+ goals",
        "Notify me when Lakers play at 7 PM"
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(alerts, id: \.self) { alert in
                    Text(alert)
                }
                .onDelete { indexSet in
                    alerts.remove(atOffsets: indexSet)
                }
            }
            .navigationTitle("My Alerts")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        alerts.append("New alert...")
                    }) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
}

