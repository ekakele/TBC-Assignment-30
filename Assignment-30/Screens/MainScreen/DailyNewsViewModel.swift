//
//  DailyNewsViewModel.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

final class DailyNewsViewModel: ObservableObject {
    @Published var journal: [News] = NewsMockData.mockJournal
//    @Published var news: News
    
    
    func saveNews(title: String, text: String, date: Date) {
        let news = News(title: title, description: text, date: date, image: "")
        journal.append(news)
        print(journal)
    }
    
    func textIsAppropriate(title: String) -> Bool {
        title.count >= 2
    }
    
    func removeNews(IndexSet: IndexSet) {
        journal.remove(atOffsets: IndexSet)
    }
    
    func moveNews(IndexSet: IndexSet, newOffset: Int) {
        journal.move(fromOffsets: IndexSet, toOffset: newOffset)
    }
}

