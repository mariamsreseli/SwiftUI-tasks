//
//  ContentView.swift
//  davaleba-28
//
//  Created by Mariam Sreseli on 5/22/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var songText: String = "We Love\nTaylor\nSwift's\nSongs\n💞"
    @State private var backgroundColor: Color = .orange
    @State private var buttonColor: Color = .blue.opacity(0.3)
    
    struct Item: Identifiable {
            let id = UUID()
            let image: String
            let header: String
            let text: String
        }
               
    let items: [Item] = [
    Item(image: "list", header: "რა დაუწუნა ბარბარემ ნიკის?", text: "ნიკის ამაზე განხცადება ჯერ არ გაუკეთებია, ფანები ელოდებიან რომ რომელიმე მალე სიჩუმეს გაფანტავს"),
    Item(image: "list", header: "რა ზომის ფეხი აქვს ვასოს?", text: "დეველოპერებმა განაცხადეს რომ თუ მას 42 და მეტი ფეხის ზომა აქვს მის მოსმენას აზრი არ აქვს და კომენტარის გარეშე დატოვებენ ლექციას"),
    Item(image: "list", header: "რა სიმაღლისაა ანჟელა ew?", text: "ანჟელა ew არის მეტრაოთხმოცი, რაც ნიშნავს რომ ის დაახლოებით ტეილორ swift-ის სიმაღლისაა და დიდი ფეხი აქვს"),
    Item(image: "list", header: "რატომ გაებუტა ბარბარეს ჭეპეტე?", text: "ამჟამინდელი მონაცემებით ისინი 2 დღე არ ესაუბრებოდნენ ერთმანეთს და როგორც გაირკვა ანიგნორებს აიგნორებდნენ რაღაც იგნორში"),
    Item(image: "list", header: "MVC vs MVVM", text: "MVC კიდე გასაგებია ჯანდაბას, მარა ეს MVVM ვერ დადის ჩემამდე, სად ვიყენებთ სვიფტ უაიში?"),
    Item(image: "list", header: "ნეტავ რამდენი ხანი გაგრძელდება ეს?", text: "აღმოჩნდა რომ დეველოპერები ძალიან გახარებულები არიან SwiftUI-თი. ნეტავ რამდენი ხანი გაგრძელდება Honeymoon phase? btw ლექციის მერე დამთავრდა ეგ ფაზა")
    ]
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            Text("Taylor UI Swift")
                .bold()
                .font(.system(size: 28))
                .fontDesign(.serif)
                .foregroundColor(.purple)
                .padding(EdgeInsets(top: 6, leading: 0, bottom: 700, trailing: 0))
            
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
            
            List(items) { item in
                                HStack {
                                    Image(item.image)
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 50, height: 50)
                                        .alignmentGuide(.listRowSeparatorLeading) { d in
                                            d[.leading]}
                                        .listRowBackground(Color.white)
                                    VStack(alignment: .leading) {
                                        Text(item.header)
                                            .font(.headline)
                                            .bold()
                                            .foregroundColor(.white)
                                        Text(item.text)
                                            .font(.subheadline)
                                            .foregroundColor(.gray)
                                        
                                        
                                    }
                                    
                                }
                                .listRowBackground(Color.clear)
                            }
            
            
            .padding(EdgeInsets(top: 400, leading: 0, bottom: 10, trailing: 0))
            
            Button(action: {
                buttonColor = .pink
            }) {
                Image(systemName: "arrow.clockwise.circle")
                    
                    .resizable()
                    .frame(width: 50, height: 50)
                    //.foregroundColor(.white)
                    .background(buttonColor)
                    .clipShape(Circle())
            }
            .padding(EdgeInsets(top: 600, leading: 270, bottom: 0, trailing: 0))
            
        }.listStyle(PlainListStyle())
    }
    
}

#Preview {
    ContentView()
}
