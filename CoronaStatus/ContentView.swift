//
//  ContentView.swift
//  CoronaStatus
//
//  Created by Juliano Vince De Campos on 09/08/21.
//  Copyright © 2021 Juliano Vince De Campos. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView{
            
            RecentView()
                .tabItem {
                    Tab(imageName:"chart.bar", text: "Recent")
            }.tag(0)
            
            MapContainerView()
                .edgesIgnoringSafeArea(.vertical)
                .tabItem {
                    Tab(imageName:"map", text: "Map")
            }.tag(1)
            
        }
    }
}

private struct Tab: View {
    let imageName: String
    let text: String
    
    var body: some View {
        VStack {
            Image(systemName: imageName)
            Text(text)
        }
    }
}
