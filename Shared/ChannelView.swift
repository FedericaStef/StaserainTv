//
//  ContentView.swift
//  Shared
//
//  Created by Federica Stefana on 08/12/21.
//

import SwiftUI

struct ChannelView: View {
    @State var searchText = ""
    
    var titles = ["Canale 5", "Italia 1", "Rai 1","Rai 2","Rai 3","Rai 4","Rai Sport","Iris", "Rai Gulp","Nove","Tv 8","Real Time","La 7","La 5","Cielo","Boing","Dmax",]
    @State var selectedTitle: String?
    
    var body: some View {
        VStack {
            NavigationView{
                VStack(alignment: .leading) {
                    List{
                    
                        ForEach(titles, id: \.self){ title in
                            HStack {
                                Text(title)
                                Spacer()
                                Image(systemName: "chevron.right")
                                
                            }
                            .onTapGesture {
                                selectedTitle = title
                            }
                            .listRowBackground(selectedTitle == title ? Color.pink : Color.clear)
                            
                            
                        }
                    
                        .listStyle(GroupedListStyle())
                    }
                }
                .navigationTitle("Canali")
                .navigationBarTitleDisplayMode(.inline)
                .searchable(text: $searchText)
            }
            
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ChannelView()
            .preferredColorScheme(.dark)
    }
}

