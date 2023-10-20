//
//  ExperienceCard2.swift
//  TravelApp
//
//  Created by ATLAS Laptop 4 Guest on 10/19/23.
//

import SwiftUI

struct ExperienceCard2: View {
        
        //Bool for like toggle and load initial value from user defaults
        @State private var isLiked: Bool = UserDefaults.standard.bool(forKey: "isLiked")
        
        //Bool for overlay toggle
        @State private var showTextOverlay: Bool = false

        
        var body: some View {
            ZStack {
                
                if showTextOverlay {
                    Color.white.opacity(0.8)
                    VStack {
                        
                        // Image of the baking experience
                        Image("baking-image")
                            .resizable()
                            .scaledToFit()
                            .overlay(
                                // Tags at the top of the image
                                HStack {


                                    // User Info and Title
                                    VStack {
                                        HStack {
                                            Image(systemName: "person.crop.circle") // Placeholder Image for the user
                                                .resizable()
                                                .frame(width: 40, height: 40)
                                                .clipShape(Circle())
                                                .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 5))
                                            
                                            VStack(alignment: .leading) {
                                                Text("Jane Doe")
                                                Text("12 October 2023")
                                                    .font(.caption)
                                                    .foregroundColor(.gray)
                                            }
                                            Spacer()
                                            
                                            Button(action: {
                                                isLiked.toggle()
                                                //save current state of the like button
                                                UserDefaults.standard.set(isLiked, forKey: "isLiked")
                                            }) {
                                                Image(systemName: isLiked ? "heart.fill" : "heart")
                                                    .foregroundColor(isLiked ? .red : .black)
                                            }
                                            Image(systemName: "arrow.right.circle")
                                            Image(systemName: "message")
                                        }
                                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
                                        
                                        // Experience Description
                                        VStack(alignment: .leading) {
                                            Text("Cute New Italian trattoria in the 6eme")
                                                .font(.headline)
                                            Text("They had great seafood dishes including pasta alle vongole!")
                                        }
                                        .padding(.horizontal)
                                        .onTapGesture{
                                            withAnimation(.easeInOut(duration: 0.2)) {
                                                showTextOverlay.toggle()
                                            }
                                        }
                                        //end description
                                    }
                                    .frame(maxHeight: showTextOverlay ? .infinity : 500)
                                    .background(.thinMaterial)
                                }
                                .background(Color.white)
                                .cornerRadius(15)
                                .shadow(radius: 10)
                                
                                //end vstack
                            )}
                }
                                
                        
//                        // User Info and Title
//                        VStack {
//                            HStack {
//                                Image(systemName: "person.crop.circle") // Placeholder Image for the user
//                                    .resizable()
//                                    .frame(width: 40, height: 40)
//                                    .clipShape(Circle())
//                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 5))
//
//                                VStack(alignment: .leading) {
//                                    Text("Jane Doe")
//                                    Text("12 October 2023")
//                                        .font(.caption)
//                                        .foregroundColor(.gray)
//                                }
//                                Spacer()
//
//                                Button(action: {
//                                    isLiked.toggle()
//                                    //save current state of the like button
//                                    UserDefaults.standard.set(isLiked, forKey: "isLiked")
//                                }) {
//                                    Image(systemName: isLiked ? "heart.fill" : "heart")
//                                        .foregroundColor(isLiked ? .red : .black)
//                                }
//                                Image(systemName: "arrow.right.circle")
//                                Image(systemName: "message")
//                            }
//                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
//
//                            // Experience Description
//                            VStack(alignment: .leading) {
//                                Text("La Cuisine Paris: Dessert cooking class")
//                                    .font(.headline)
//                                Text("Learn to make your own croissants!! The centrally located La Cuisine Paris cooking school has a range of culinary courses in English...")
//                            }
//                            .padding(.horizontal)
//                            .onTapGesture{
//                                withAnimation(.easeInOut(duration: 0.2)) {
//                                    showTextOverlay.toggle()
//                                }
//                            }
//                            //end description
//                        }
//                        .frame(maxHeight: showTextOverlay ? .infinity : 500)
//                        .background(.thinMaterial)
//                    }
////                    .scaledToFill()
//
//                }
                else {
                    
                    VStack {
                        
                        // Image of the baking experience
                        Image("baking-image")
                            .resizable()
                            .scaledToFit()
                            .overlay(
                                // Tags at the top of the image
                                HStack {
                                    TagView(text: "Rec")
                                    TagView(text: "Restaurant")
                                    TagView(text: "Italian")
                                }.padding(.top, 10),
                                alignment: .topLeading
                            )
                        
                        // User Info and Title
                        VStack {
                            HStack {
                                Image(systemName: "person.crop.circle") // Placeholder Image for the user
                                    .resizable()
                                    .frame(width: 40, height: 40)
                                    .clipShape(Circle())
                                    .padding(EdgeInsets(top: 0, leading: 20, bottom: 0, trailing: 5))
                                
                                VStack(alignment: .leading) {
                                    Text("Jane Doe")
                                    Text("12 October 2023")
                                        .font(.caption)
                                        .foregroundColor(.gray)
                                }
                                Spacer()
                                
                                Button(action: {
                                    isLiked.toggle()
                                    //save current state of the like button
                                    UserDefaults.standard.set(isLiked, forKey: "isLiked")
                                }) {
                                    Image(systemName: isLiked ? "heart.fill" : "heart")
                                        .foregroundColor(isLiked ? .red : .black)
                                }
                                Image(systemName: "arrow.right.circle")
                                Image(systemName: "message")
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 25))
                            
                            // Experience Description
                            VStack(alignment: .leading) {
                                Text("Cute New Italian trattoria in the 6eme")
                                    .font(.headline)
                                Text("They had great seafood dishes including pasta alle vongole!")
                            }
                            .padding(.horizontal)
                            .onTapGesture{
                                withAnimation(.easeInOut(duration: 0.2)) {
                                    showTextOverlay.toggle()
                                }
                            }
                            //end description
                        }
                        .frame(maxHeight: showTextOverlay ? .infinity : 500)
                        .background(.thinMaterial)
                    }
                    .background(Color.white)
                    .cornerRadius(15)
                    .shadow(radius: 10)
                    
                    //end vstack
                }
                
            }
            //end zstack
            
        }
}
