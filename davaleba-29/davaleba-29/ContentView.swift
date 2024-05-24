//
//  ContentView.swift
//  davaleba-29
//
//  Created by Mariam Sreseli on 5/24/24.
//

import SwiftUI

struct ContentView: View {
    
    struct Task: Identifiable {
        let id = UUID()
        let title: String
        let detail: String
    }
    
    let tasks: [Task] = [
    Task(title: "Mobile App Research", detail: "4 Oct"),
    Task(title: "Prepare Wireframe for Main Flow", detail: "4 Oct"),
    Task(title: "Prepare Screens", detail: "4 Oct"),
    Task(title: "Website Research", detail: "5 Oct"),
    Task(title: "Prepare Wireframe for Main Flow", detail: "5 Oct"),
    Task(title: "Prepare Screens", detail: "5 Oct")
    
    ]
    
    var body: some View {
        ZStack{
//            Color.primary
//                .ignoresSafeArea()
            
            VStack {
                HStack {
                    Text("You have 3 tasks\n to complete")
                        .font(.system(size: 22))
                        .bold()
                        .foregroundColor(.primary)
                    
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
                    .frame(height: 0)
                
                RoundedRectangle(cornerRadius: 15).fill(Color("button"))
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
                        .foregroundColor(.primary)
                        .font(.system(size: 20))
    
                    
                        .padding(EdgeInsets(top: 80, leading: 10, bottom: 0, trailing: 0))
                    Spacer()
                }
               
                    HStack {
                        RoundedRectangle(cornerRadius: 15)
                            .fill(Color("myColor"))
                            .frame(width: 391, height: 120)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 10, trailing: 0))
                            .overlay(
                            Text("Daily Tasks")
                                .foregroundColor(.primary)
                                .bold()
                                .padding(EdgeInsets(top: 0, leading: 0, bottom: 100, trailing: 270))
                            )
                            .overlay(
                            Text("3/6 Task Completed")
                                .lineLimit(1)
                                .foregroundColor(.primary)
                                .padding(EdgeInsets(top: 0, leading: 5, bottom: 40, trailing: 210))
                            )
                            .overlay(
                            Text("Keep working")
                                .lineLimit(1)
                                .foregroundColor(.gray)
                                .padding(EdgeInsets(top: 27, leading: 5, bottom: 0, trailing: 260))
                            )
                            .overlay(
                                RoundedRectangle(cornerRadius: 25, style: .continuous)
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
                                .foregroundColor(.primary)
                                .padding(EdgeInsets(top: 30, leading: 280, bottom: 0, trailing: 0))
                            )
                            .overlay(
                                Text("Completed Tasks")
                                    .foregroundColor(.primary)
                                    .font(.system(size: 20))
                                    .padding(EdgeInsets(top: 150, leading: 0, bottom: 0, trailing: 230))
                            )
                    }
                Spacer()
                    .frame(height: 30)

                    List(tasks) { task in
                       TaskRow(task: task)
                            .padding(.vertical, 10)
                        
                    }
                    .background(Color.clear)
                    .listRowBackground(Color.clear)
                    .frame(width: 400, height: 400)
                    

            }.padding(EdgeInsets(top: 50, leading: 0, bottom: 0, trailing: 0))
                .listStyle(.plain)
                
        }
    }
}

struct TaskListView: View {
    let tasks: [ContentView.Task]
    
    var body: some View {
        List(tasks) { task in
            TaskRow(task: task)
                .padding(.vertical, 10)
        }
    }
}

struct TaskRow: View {
    let task: ContentView.Task
    
    var body: some View {
        HStack {
            Image(systemName: "rectangle.portrait.fill")
                .resizable()
                .frame(width: 10, height: 40)
                .foregroundColor(Color("miniRec"))
            VStack(alignment: .leading) {
                Text(task.title)
                    .font(.headline)
                Text(task.detail)
                    .font(.subheadline)
            }
            Spacer()
            Image(systemName: "note.text")
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            Image(systemName: "checkmark.circle")
        }
    }
}


#Preview {
    ContentView()
}
