//
//  GameDetailView.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct GameDetailView: View {
    let game: Game

    var body: some View {
        VStack(spacing: 20) {
            Text("\(game.homeTeam) vs \(game.awayTeam)")
                .font(.title2)
            Text("Status: \(game.status)")
            Text("Score: \(game.homeScore) - \(game.awayScore)")
        }
        .navigationTitle("Game Detail")
    }
}
