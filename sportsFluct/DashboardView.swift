//
//  DashboardView.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()

    var body: some View {
        NavigationView {
            Group {
                if viewModel.isLoading {
                    VStack {
                        ProgressView("Loading Live Games...")
                            .progressViewStyle(CircularProgressViewStyle())
                            .padding()
                    }
                } else if viewModel.games.isEmpty {
                    VStack {
                        Text("No games found.")
                            .foregroundColor(.gray)
                        Button("Retry") {
                            viewModel.loadGames()
                        }
                        .padding()
                    }
                } else {
                    List(viewModel.games) { game in
                        NavigationLink(destination: GameDetailView(game: game)) {
                            VStack(alignment: .leading) {
                                Text("\(game.homeTeam) vs \(game.awayTeam)")
                                    .font(.headline)
                                Text("Score: \(game.homeScore) - \(game.awayScore)")
                                    .foregroundColor(.gray)
                            }
                        }
                    }
                }
            }
            .navigationTitle("Live Scores")
        }
        .onAppear {
            viewModel.loadGames()
        }
    }
}



