//
//  DailyNewsView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 20.12.23.
//

import SwiftUI

struct DailyNewsView: View {
    // MARK: - Properties
    @ObservedObject private var viewModel = DailyNewsViewModel()
    
    // MARK: - Body
    var body: some View {
        VStack {
            JournalEntryFormView(viewModel: viewModel)
            NewsLisView(viewModel: viewModel)
        }
    }
}

#Preview {
    DailyNewsView()
}
