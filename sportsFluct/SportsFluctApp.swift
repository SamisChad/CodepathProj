//
//  SportsFluctApp.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/13/25.

import SwiftUI
@main

struct SportsFluctApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                DashboardView().tabItem {
                    Label("Home", systemImage: "house")
                }
                Text("Favorites").tabItem {
                    Label("Favorites", systemImage: "star")
                }
                Text("Alerts").tabItem {
                    Label("Alerts", systemImage: "bell")
                }
                Text("Analytics").tabItem {
                    Label("Analytics", systemImage: "chart.bar")
                }
                Text("Settings").tabItem {
                    Label("Settings", systemImage: "gear")
                }
            }
        }
    }
}


