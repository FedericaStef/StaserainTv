//
//  MainPage.swift
//  StaserainTv (iOS)
//
//  Created by Federica Stefana on 13/12/21.
//

import SwiftUI

struct MainPage: View {
    var body: some View {
        TabView{
            HomeView()
                .tabItem{
                    Image(systemName: "house.fill")
                    Text("home")
                }
            ChannelView()
                .tabItem{
                    Image(systemName: "list.dash")
                    Text("Canali")
                }
        }
        .accentColor(.pink)
    }
}

struct MainPage_Previews: PreviewProvider {
    static var previews: some View {
        MainPage()
            .previewDevice("iPhone 11")
            .preferredColorScheme(.dark)
    }
}
