//
//  ChatView.swift
//  davaleba-28
//
//  Created by Mariam Sreseli on 5/23/24.
//

import SwiftUI
struct ChatView: View {
    @State private var backgroundColor: Color = .orange
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(backgroundColor)
                .frame(width: 180, height: 120)
                .padding(EdgeInsets(top: 20, leading: 190, bottom: 540, trailing: 0))
                .overlay(
                    Image("chat")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 80, height: 80, alignment: .bottomTrailing)
                        .padding(EdgeInsets(top: 0, leading: 290, bottom: 500, trailing: 0))
                )
                .overlay(
                    Button(action: {
                        backgroundColor = .pink
                    }) {
                        Image("minichat")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .bottomTrailing)
                            .padding(EdgeInsets(top: 0, leading: 80, bottom: 570, trailing: 0))
                    }
                )
                .overlay(
                    Text("ჩატაობა")
                        .font(.system(size: 10))
                        .bold()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 80, bottom: 510, trailing: 0))
                )
        }
    }
}

#Preview {
    ChatView()
}
