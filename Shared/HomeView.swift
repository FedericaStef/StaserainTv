//
//  HomeView.swift
//  StaserainTv (iOS)
//
//  Created by Federica Stefana on 13/12/21.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    var body: some View {
        NavigationView {
            VStack{
                
                Text("In evidenza")
                    .bold()
                    .font(.title2)
                        .padding(.horizontal, 20)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        
                TabView {
          
                Image ( uiImage: UIImage(named: "Amici2021.png")!)
                    .resizable()
                    .cornerRadius(15)
                    .shadow(color:.black, radius: 2.5)
                    .frame(width: 394, height: 200)
                    .padding(50)
                    .overlay(
                        ZStack{
                            Text("Prima Serata")
                                .font(.title2)
                                .bold()
                                .offset(x:110, y:85)
                                .foregroundColor(.white)
Capsule(style: .continuous)
                        .frame(width: 394, height: 35)
                            .offset( y: 85 )
                            .foregroundColor(.white).opacity(0.2)
                            
                        }
                    )
                    Image ( uiImage: UIImage(named: "VanHelsing.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color:.black, radius: 2.5)
                        .frame(width: 394, height: 200)
                        .padding(50)
                        .overlay(
                            ZStack{
                                Text("Seconda Serata")
                                    .font(.title2)
                                    .bold()
                                    .offset(x:105, y:85)
                                    .foregroundColor(.white)
                                
                    Capsule(style: .continuous)
                                            .frame(width: 394, height: 35)
                                                .offset( y: 85 )
                                .foregroundColor(.white).opacity(0.2)
                                
                            })
                        
                    Image ( uiImage: UIImage(named: "Ignoti.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color:.black, radius: 2.5)
                        .frame(width: 394, height: 200)
                        .padding(50)
                        .overlay(
                            ZStack{
                                Text("In Onda")
                                    .font(.title2)
                                    .bold()
                                    .offset(x:130, y:85)
                                    .foregroundColor(.white)
                    Capsule(style: .continuous)
                                            .frame(width: 394, height: 35)
                                                .offset( y: 85 )
                                                .foregroundColor(.white).opacity(0.2)
                            })

                }
                .padding(.vertical, -40)
                .tabViewStyle(.page)
                .indexViewStyle(.page(backgroundDisplayMode: .always))
                .offset(y:-15)
                
                
                VStack{
                Text("Genere")
                        .bold()
                        .font(.title2)
                        .padding(.horizontal,20)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                HStack{
                    ZStack {
                        
                        Image ( uiImage: UIImage(named: "Romantic.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 2.5)
                        .frame(width: 114, height: 138)
                    .padding(5)
                        Text("Romantico")
                            .bold()
                            .offset(y: 60)
                            .foregroundColor(.white)
                        
                           
                    }
                    ZStack{
                    Image ( uiImage: UIImage(named: "Horror2.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 2.5)
                        .frame(width: 114, height: 138)
                        .padding(5)
                        Text("Horror")
                            .bold()
                            .offset(y:60)
                            .foregroundColor(.white)
                    }
                    ZStack{
                    Image ( uiImage: UIImage(named: "Avventura.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 2.5)
                        .frame(width: 114, height: 138)
                        .padding(5)
                        Text("Avventura")
                            .bold()
                            .offset(y:60)
                            .foregroundColor(.white)
                    }
                }
                }
                HStack{
                    ZStack{
                    Image ( uiImage: UIImage(named: "Galaxy.png")!)
                        .resizable()
                        .cornerRadius(15)
                        .shadow(color: .black, radius: 2.5)
                        .frame(width: 114, height: 138)
                        .padding(5)
                        Text("Fantascienza")
                            .bold()
                            .offset(y:60)
                            .foregroundColor(.white)
                    }
                    ZStack{
                    
                        Image ( uiImage: UIImage(named: "Fun.png")!)
                            .resizable()
                            .cornerRadius(15)
                            .shadow(color: .black, radius: 2.5)
                            .frame(width: 114, height: 138)
                            .padding(5)
                        Text ("Commedia")
                            .bold()
                            .offset(y:60)
                            .foregroundColor(.white)
                    }
                    ZStack{
                        Image ( uiImage: UIImage(named: "Magic.png")!)
                            .resizable()
                            .cornerRadius(15)
                            .shadow(color: .black, radius: 2.5)
                            .frame(width: 114, height: 138)
                            .padding(5)
                            Text("Fantasy")
                            .bold()
                            .offset(y:60)
                            .foregroundColor(.white)
                    }
                    
                }
            
            }.padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
        
                .navigationTitle("Stasera in Tv")
                .navigationBarTitleDisplayMode(.large)
                .searchable(text: $searchText)
            
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .previewDevice("iPhone 11")
            .preferredColorScheme(.dark)
            
    }
}
