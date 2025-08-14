//
//  DashboardViewModel.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//


import Foundation

class DashboardViewModel: ObservableObject {
    @Published var games: [Game] = []
    @Published var isLoading = false

    func loadGames() {
        isLoading = true
        APIService.shared.fetchLiveGames { [weak self] games in
            DispatchQueue.main.async {
                self?.games = games
                self?.isLoading = false
            }
        }
    }
}
