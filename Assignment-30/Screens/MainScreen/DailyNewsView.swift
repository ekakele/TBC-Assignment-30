//
//  DailyNewsView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 20.12.23.
//

import SwiftUI

struct DailyNewsView: View {
    @ObservedObject private var viewModel = DailyNewsViewModel()

    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    DailyNewsView()
}
