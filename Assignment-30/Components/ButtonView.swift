//
//  ButtonView.swift
//  Assignment-30
//
//  Created by Eka Kelenjeridze on 21.12.23.
//

import SwiftUI

struct ButtonView: View {
    var title: String
    var color: Color = nil ?? .appOrange
    var action: (() -> Void)?

    
    var body: some View {
        Button(action: {
            action?()
        }, label: {
            Text(title)
                .frame(width: 140, height: 60)
                .background(color)
                .font(.system(size: 20))
                .bold()
                .foregroundColor(.white)
                .cornerRadius(10)
                .padding(.top, 5)
        })
    }
}

#Preview {
    ButtonView(title: "test", color: .appOrange)
}
