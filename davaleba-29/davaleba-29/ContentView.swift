//
//  ContentView.swift
//  davaleba-29
//
//  Created by Mariam Sreseli on 5/24/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.primary
                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("You have 3 tasks\n to complete")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image("lela")
                        .resizable()
                        .padding(2)
                        .background(Color.purple)
                        .cornerRadius(20)
                        .scaledToFit()
                        .frame(width: 44, height: 45)
                        .overlay(
                        Image("3")
                            .resizable()
                            .frame(width: 15, height: 15)
                            .padding(EdgeInsets(top: 35, leading: 25, bottom: 0, trailing: 0))
                        
                        )
                }
                .padding()
                Spacer()
                
                RoundedRectangle(cornerRadius: 15).fill(.blue.gradient)
                    .frame(width: 390, height: 50)
                    .overlay(
                    Text("Complete All")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .bold()
                    )
                Spacer()
                    .frame(height: 615)
    
            }
            
            VStack {
                
                HStack {
                    Text("Progress")
                        .foregroundColor(.white)
                        .font(.system(size: 20))
            
            
                    Spacer()
                }
                HStack {
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(.darkGray))
                        .frame(width: 391, height: 130)
                        .overlay(
                        Text("Daily Tasks")
                            .foregroundColor(.white)
                            .bold()
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 270))
                        )
                        .overlay(
                        Text("3/6 Task Completed")
                            .lineLimit(1)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 0, leading: 5, bottom: 40, trailing: 210))
                        )
                        .overlay(
                        Text("Keep working")
                            .lineLimit(1)
                            .foregroundColor(.gray)
                            .padding(EdgeInsets(top: 27, leading: 5, bottom: 0, trailing: 260))
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 360, height: 18)
                            .foregroundColor(Color.blue.opacity(0.5))
                            .padding(EdgeInsets(top: 75, leading: 0, bottom: 0, trailing: 0))
                        )
                        .overlay(
                        RoundedRectangle(cornerRadius: 25)
                            .frame(width: 180, height: 18)
                            .foregroundColor(Color.blue.opacity(0.5))
                            .padding(EdgeInsets(top: 75, leading: 0, bottom: 0, trailing: 177))
                        )
                        .overlay(
                        Text("50%")
                            .font(.system(size: 19))
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 30, leading: 280, bottom: 0, trailing: 0))
                        )
                        .overlay(
                            Text("Completed Tasks")
                                .foregroundColor(.white)
                                .font(.system(size: 20))
                                .padding(EdgeInsets(top: 200, leading: 0, bottom: 0, trailing: 230))
                        )
                    
                    
                }
                Spacer()
                    .frame(height: 270)
                
//                List {
//                    Text("text1")
//                }
//                .frame(width: 400, height: 500)
                    
                
                
                
                
            }.padding()
            
            
        }
        

          
           
    }
}

#Preview {
    ContentView()
}
