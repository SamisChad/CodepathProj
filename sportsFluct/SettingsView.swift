//
//  SettingsView.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct SettingsView: View {
    @State private var offlineCaching = true

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Preferences")) {
                    Toggle("Offline Caching", isOn: $offlineCaching)
                }

                Section(header: Text("Account")) {
                    NavigationLink("Manage API Keys", destination: Text("Coming Soon..."))
                    NavigationLink("Log Out", destination: Text("Goodbye 👋"))
                }
            }
            .navigationTitle("Settings")
        }
    }
}


