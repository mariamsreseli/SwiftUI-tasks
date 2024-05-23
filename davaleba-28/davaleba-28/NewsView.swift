//
//  NewsView.swift
//  davaleba-28
//
//  Created by Mariam Sreseli on 5/23/24.
//

import SwiftUI
struct NewsView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.purple)
                .frame(width: 180, height: 120)
                .padding(EdgeInsets(top: 20, leading: 190, bottom: 260, trailing: 0))
                .overlay(
                    Image("mic")
                        .resizable()
                        .scaledToFit()
                        .background(.purple)
                        .frame(width: 80, height: 80, alignment: .bottomTrailing)
                        .padding(EdgeInsets(top: 0, leading: 290, bottom: 200, trailing: 0))
                )
                .overlay(
                    Image("person")
                        .resizable()
                        .scaledToFit()
                        .background(.purple)
                        .frame(width: 40, height: 40, alignment: .bottomTrailing)
                        .padding(EdgeInsets(top: 0, leading: 80, bottom: 300, trailing: 0))
                )
                .overlay(
                    VStack{
                        Text("სუპერ")
                        Text("სიახლეები")
                    }
                        .font(.system(size: 10))
                        .bold()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 80, bottom: 230, trailing: 0))
                )
        }
    }
}

#Preview {
    NewsView()
}
