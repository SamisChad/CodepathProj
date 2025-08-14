//
//  FavoritesView.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("My Teams")) {
                    Text("• LA Lakers")
                    Text("• Manchester City")
                }

                Section(header: Text("My Players")) {
                    Text("• LeBron James")
                    Text("• Erling Haaland")
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Favorites")
        }
    }
}

