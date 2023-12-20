//
//  ContentView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/2/23.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .homes
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    var body: some View {
        VStack(spacing: 0.0) {
            TabView(selection: $currentTab) {
                HomeTabView()
                    .tag(Tab.homes)
                BrowseTabView()
                    .tag(Tab.browse)
                SavedTabView()
                    .tag(Tab.saved)
                ProfileTabView()
                    .tag(Tab.account)

            }
            CustomTabBarView(currentTab:$currentTab)
        }
        
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
