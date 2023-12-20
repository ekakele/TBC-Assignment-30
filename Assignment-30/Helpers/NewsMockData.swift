//
//  NewsMockData.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import Foundation

struct NewsMockData {
    
    static let mockNews = News(
        title: "Breaking News 1",
        description: "This is the first breaking news.",
        date: Date(),
        image: "news_image_1"
    )
    
    static let mockNewsTwo = News(
        title: "Exciting Announcement",
        description: "A major announcement that will impact everyone.",
        date: Date().addingTimeInterval(3600), // Adding 1 hour for variety
        image: "news_image_4"
    )

    static let mockNewsThree = News(
        title: "Cultural Event Highlights",
        description: "Explore the cultural richness of our community through various events.",
        date: Date().addingTimeInterval(7200), // Adding 2 hours for variety
        image: "news_image_5"
    )

    static let mockJournal = Journal(news: [mockNews, mockNewsTwo, mockNewsThree])
}
