//
//  NewsAppTabView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 20.12.23.
//

import SwiftUI

struct NewsAppTabView: View {
    // MARK: - Body
    var body: some View {
        TabView {
            DailyNewsView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("Daily News")
                }
            
            FavoriteNewsView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorites")
                }
        }
        .accentColor(.appOrange)
    }
}

#Preview {
    NewsAppTabView()
}
