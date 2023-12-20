//
//  Model.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import Foundation

// MARK: - NewsModel
struct Journal: Hashable {
    let news: [News]
}

struct News: Hashable {
    let title: String
    let description: String
    let date: Date
    let image: String
}
