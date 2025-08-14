//
//  APIService.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//
import Foundation

class APIService {
    static let shared = APIService()
    private init() {}

    func fetchLiveGames(completion: @escaping ([Game]) -> Void) {
        guard let url = URL(string: "https://v3.football.api-sports.io/fixtures?live=all") else { return }
        
        var request = URLRequest(url: url)
        request.setValue("5c2a0bd71b74dccfaf1386d7476540aa", forHTTPHeaderField: "x-apisports-key")

        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data, error == nil else {
                print("❌ API error:", error ?? "Unknown")
                return
            }

            do {
                let decoded = try JSONDecoder().decode(APIFootballResponse.self, from: data)
                let games = decoded.response.map { apiGame in
                    Game(
                        id: String(apiGame.fixture.id),
                        homeTeam: apiGame.teams.home.name,
                        awayTeam: apiGame.teams.away.name,
                        homeScore: apiGame.goals.home ?? 0,
                        awayScore: apiGame.goals.away ?? 0,
                        status: apiGame.fixture.status.short
                    )
                }
                DispatchQueue.main.async {
                    completion(games)
                }
            } catch {
                print("❌ Decode error:", error)
            }
        }.resume()
    }
}


