//
//  NewsLisView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

struct NewsLisView: View {
    // MARK: - Properties
    @ObservedObject var viewModel: DailyNewsViewModel
    @State private var title = ""
    @State private var text = ""
    @State private var date = Date()
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            if viewModel.journal.isEmpty {
                EmptyJournalView()
            }
            else {
                listView
                    .navigationTitle("Journal")
                    .navigationBarTitleDisplayMode(.automatic)
                    .toolbar(content: {
                        EditButton()
                    })
            }
        }
        .accentColor(.appOrange)
    }
    
    // MARK: - Components
    private var listView: some View {
        return List {
            
            ForEach(viewModel.journal, id: \.self) { news in
                listRowView(news: news)
            }
            .onDelete(perform: { indexSet in
                viewModel.removeNews(IndexSet: indexSet)
            })
            .onMove(perform: { indices, newOffset in
                viewModel.moveNews(IndexSet: indices, newOffset: newOffset)
            })
        }
    }
    
    func listRowView(news: News) -> some View {
        HStack(spacing: 10) {
            Rectangle()
                .fill(.appOrange)
                .frame(width: 16, height: 100)
            
            infoStackView(news: news)
                .foregroundColor(.black)
                .padding(.vertical, 20)
            
            Spacer()
        }
        .padding(.trailing, 11)
        .foregroundColor(.clear)
        .frame(width: .infinity, height: 80)
        .cornerRadius(8)
    }
    
    private func infoStackView(news: News) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            titleBodyStackView(news: news)
            
            dateStackView(news: news)
        }
        .foregroundColor(.black)
        .padding(.vertical, 20)
    }
    
    private func titleBodyStackView(news: News) -> some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(news.title)
                .font(.title2)
                .bold()
                .lineLimit(1)
            
            Text(news.description)
                .font(.system(size: 19))
                .lineLimit(1)
        }
    }
    
    private func dateStackView(news: News) -> some View {
        HStack {
            Image(systemName: "calendar")
                .resizable()
                .frame(width: 15, height: 17)
            Text("\(news.date)")
                .font(.subheadline)
                .foregroundStyle(Color.appGray)
        }
    }
}

#Preview {
    NewsLisView(viewModel: DailyNewsViewModel())
}
