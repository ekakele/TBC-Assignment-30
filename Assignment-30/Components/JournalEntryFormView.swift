//
//  JournalEntryFormView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 20.12.23.
//

import SwiftUI

struct JournalEntryFormView: View {
    // MARK: - Properties
    @ObservedObject private var viewModel = DailyNewsViewModel()
    
    @State private var title = ""
    @State private var text = ""
    @State private var date = Date()
    
    // MARK: - Body
    var body: some View {
        NavigationStack {
            formView
                .navigationTitle("News Entry Form")
            
            saveButtonView
        }
        .accentColor(.appOrange)
    }
    
    private var formView: some View {
        Form {
            Section {
                TextField("News Title", text: $title)
                
                TextField("News Body", text: $text, axis: .vertical)
                    .lineLimit(2...12)
                    .frame(alignment: .top)
                
                DatePicker(
                    "Pick a Date of News",
                    selection: $date,
                    displayedComponents: .date)
            } header: {
                Text("News Details")
            }
        }
    }
    
    private var saveButtonView: some View {
        ButtonView(
            title: "Save",
            color: viewModel.textIsAppropriate(title: title) ? .appOrange : .gray,
            action: {
                if viewModel.textIsAppropriate(title: title) {
                    viewModel.saveNews(title: title, text: text, date: date)
                }
            }
        )
        .disabled(!viewModel.textIsAppropriate(title: title))
    }
}

#Preview {
    JournalEntryFormView()
}
