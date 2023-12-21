//
//  emptyJournalView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

struct EmptyJournalView: View {
    var body: some View {
        Text("No News To Show")
            .frame(width: .infinity, alignment: .center)
            .font(.system(size: 25))
            .foregroundStyle(.appGray)
        Image(systemName: "tray")
            .resizable()
            .frame(width: 50, height: 50, alignment: .center)
            .foregroundStyle(.appGray)
    }
}

#Preview {
    EmptyJournalView()
}
