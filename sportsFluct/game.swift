//
//  game.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import Foundation

struct Game: Identifiable {
    let id: String
    let homeTeam: String
    let awayTeam: String
    let homeScore: Int
    let awayScore: Int
    let status: String
}

