//
//  NewsMockData.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

struct NewsMockData {
    
    static let mockNews = News(
        title: "Breaking News",
        description: "This is the first breaking news.",
        date: Date(),
        image: "news_image_1"
    )
    
    static let mockNewsTwo = News(
        title: "Exciting Announcement",
        description: "A major announcement that will impact everyone.",
        date: Date().addingTimeInterval(3600),
        image: "news_image_4"
    )

    static let mockNewsThree = News(
        title: "Cultural Event Highlights",
        description: "Explore the cultural richness of our community through various events.",
        date: Date().addingTimeInterval(7200),
        image: "news_image_5"
    )

    static let mockJournal = [mockNews, mockNewsTwo, mockNewsThree]
}
