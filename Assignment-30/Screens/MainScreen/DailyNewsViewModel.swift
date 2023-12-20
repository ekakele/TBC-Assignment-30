//
//  DailyNewsViewModel.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import Foundation

final class DailyNewsViewModel: ObservableObject {
    @Published var journal: [News] = []
//    @Published var news: News
    
    
    func saveNews(title: String, text: String, date: Date) {
        let news = News(title: title, description: text, date: date, image: "")
        journal.append(news)
    }
    
    func textIsAppropriate(title: String) -> Bool {
        title.count >= 2
    }
}

