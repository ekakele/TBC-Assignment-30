//
//  ButtonView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

struct ButtonView: View {
    // MARK: - Properties
    var title: String
    var color: Color = nil ?? .appOrange
    var action: (() -> Void)?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            Text(title)
                .frame(width: 100, height: 50)
                .background(color)
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 5)
        })
        .buttonStyle(PlainButtonStyle())
    }
}

#Preview {
    ButtonView(title: "save", color: .appOrange)
}
