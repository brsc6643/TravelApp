//
//  ContentView.swift
//  TravelApp
//
//  Created by ATLAS Laptop 4 Guest on 10/18/23.
//

import SwiftUI

struct ContentView: View {
    // This will track the active selection: 0 for "Stay Local" and 1 for "Go Global"
    @State private var selection: Int = 0
    @State private var selectedTab = 0

    
    
    var body: some View {
        
        
            
        VStack(spacing: 20){
            
            //header
            HStack(spacing: 0) {
                
                Image(systemName: "line.horizontal.3.decrease.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                
                // Slider
                ZStack {
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.brown)
                        .frame(width: 220, height: 50)
                    
                    HStack(spacing: 0) {
                        
                        
                        Button(action: { selection = 0 }) {
                            Text("Stay Local")
                                .foregroundColor(.black)
                                .padding()
                                .background(selection == 0 ? Color.white : Color.clear)
                                .clipShape(Capsule())
                        }
                        
                        Button(action: { selection = 1 }) {
                            Text("Go Global")
                                .foregroundColor(.black)
                                .padding()
                                .background(selection == 1 ? Color.white : Color.clear)
                                .clipShape(Capsule())
                        }
                        
                    }
                    .background(Capsule().stroke(Color.gray, lineWidth: 1)) // Outer border
                    .padding(.horizontal)
                    .foregroundColor(.brown)
                    //end slider
                }
                
                
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .clipShape(Circle())
            }
            // end header
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color.brown)
                ScrollView{
                    
                    
                    // Experience Cards
                    ExperienceCard1()
                    ExperienceCard2()
                    ExperienceCard3()
                    
                }.padding()
            }
            
            //tab bar
            //TabBarView()
            TabView(selection: $selectedTab) {
                Text("")
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(0)
                Text("")
                    .tabItem{
                        Image(systemName: "plus.circle")
                    }
                    .tag(1)
                Text("")
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                    }
                    .tag(2)
            }
            .accentColor(.black)
            .frame(height: 45)
        }
        Color.brown
        }
    }

    
    // Tag Component
struct TagView: View {
        var text: String
    var body: some View {
        if (text == "Rec"){
                Text(text)
            .font(.caption)
            .padding(.horizontal, 10)
            .padding(.vertical, 5)
            .cornerRadius(15)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.gray, lineWidth: 1)
            )
            .background(.pink)

        }
        else if (text == "Itinerary") {
            Text(text)
                .font(.caption)
                .padding(.horizontal, 10)
                .padding(.vertical, 5)
                .cornerRadius(15)
                .overlay(
                    RoundedRectangle(cornerRadius: 15)
                        .stroke(Color.gray, lineWidth: 1)
                )
                .background(.green)

        }
        else {
                Text(text)
                    .font(.caption)
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    .cornerRadius(15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 15)
                            .stroke(Color.gray, lineWidth: 1)
                    )
                    .background(.gray)
            }
        }
}

    struct TabBarView: View {
    @State private var selectedTab = 0
        
        var body: some View {
            TabView(selection: $selectedTab) {
                Text("")
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(0)
                Text("")
                    .tabItem{
                        Image(systemName: "plus.circle")
                    }
                    .tag(1)
                Text("")
                    .tabItem{
                        Image(systemName: "person.crop.circle")
                    }
                    .tag(2)
            }
            .accentColor(.black)
        }
}

//struct HomeView: View {
//    var body: some View {
//        HStack{}
//    }
//}
//struct WriteView: View {
//    var body: some View {
//        VStack {
//            Text("Write")
//            Spacer()
//        }
//    }
//}
//struct ProfileView: View {
//    var body: some View {
//        VStack {
//            Text("Profile")
//            Spacer()
//        }
//    }
//}
    
    

    // Preview for Canvas
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
