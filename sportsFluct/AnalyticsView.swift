//
//  AnalyticsView.swift
//  sportsFluct
//
//  Created by Samyam Paudel on 8/12/25.
//

import SwiftUI

struct AnalyticsView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Analytics Dashboard")
                    .font(.title)
                    .bold()

                Image(systemName: "chart.bar.xaxis")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .foregroundColor(.blue)

                Text("Here you'll see trends, projections, and win probabilities (coming soon)")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding()
            }
            .navigationTitle("Analytics")
        }
    }
}

