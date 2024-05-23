//
//  SongView.swift
//  davaleba-28
//
//  Created by Mariam Sreseli on 5/23/24.
//

import SwiftUI
struct SongView: View {
    @State private var songText: String = "We Love\nTaylor\nSwift's\nSongs\n💞"
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(.yellow)
                .frame(width: 180, height: 270)
                .padding(EdgeInsets(top: 20, leading: 0, bottom: 400, trailing: 190))
                .overlay(
                    Image("guitar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 120, height: 190, alignment: .bottomTrailing)
                        .padding(EdgeInsets(top: 20, leading: 0, bottom: 310, trailing: 130))
                )
                .overlay(
                    VStack {
                        ForEach(songText.split(separator: "\n"), id: \.self) { word in
                            Text(word)
                        }
                    }
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 280, trailing: 240))
                )
                .overlay(
                    Button(action: {
                        songText = "Rihanna\nis\nthe\nbest\n🤘"
                    }) {
                        Image("minimic")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 40, height: 40, alignment: .bottomTrailing)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 580, trailing: 300))
                    }
                )
                .overlay(
                    Text("ტეილორის სიმღერები")
                        .font(.system(size: 10))
                        .bold()
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 520, trailing: 240))
                )
        }
    }
}

#Preview {
    SongView()
}
