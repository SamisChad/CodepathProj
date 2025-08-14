//
//  APIFootballModels.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import Foundation

struct APIFootballResponse: Decodable {
    let response: [APIFootballGame]
}

struct APIFootballGame: Decodable {
    let fixture: Fixture
    let teams: Teams
    let goals: Goals
}

struct Fixture: Decodable {
    let id: Int
    let status: FixtureStatus
}

struct FixtureStatus: Decodable {
    let short: String
}

struct Teams: Decodable {
    let home: Team
    let away: Team
}

struct Team: Decodable {
    let name: String
}

struct Goals: Decodable {
    let home: Int?
    let away: Int?
}


