//
//  ContentView.swift
//  SwiftUIBBQuotes
//
//  Created by Ismaïl LP on 17/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            QuoteView(show: Constants.bbName)
                .tabItem {
                    Label(Constants.bbName, systemImage: "tortoise")
                }
            
            QuoteView(show: Constants.bcsName)
                .tabItem {
                    Label(Constants.bbName, systemImage: "briefcase")
                }
        }
        .onAppear {
            UITabBar.appearance().scrollEdgeAppearance =
            UITabBarAppearance()
        }
        .preferredColorScheme(.dark)
    }
}

#Preview {
    ContentView()
}
