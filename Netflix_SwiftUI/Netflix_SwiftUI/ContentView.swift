//
//  ContentView.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import SwiftUI

struct ContentView: View {
    
    init() {
        UITabBar.appearance().isTranslucent = false
        UITabBar.appearance().barTintColor = .black
    }
    
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("1")
                }
                .tag(0)
            Text("Search")
                .tabItem {
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                .tag(1)
            Text("Comming Soon")
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("3")
                }
                .tag(2)
            Text("Downloads")
                .tabItem {
                    Image(systemName: "arrow.down")
                    Text("4")
                }
                .tag(3)
            Text("More")
                .tabItem {
                    Image(systemName: "equal")
                    Text("5")
                }
                .tag(4)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
