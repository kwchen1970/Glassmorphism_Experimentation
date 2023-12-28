//
//  CustomTabBarView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/18/23.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var currentTab: Tab
    private var fillImage: String {
        currentTab.systemImage + ".fill"
    }
    var backgroundColors = [Color(.systemPink),Color(.blue)]
    var body: some View {
        VStack {
            HStack(spacing: 0.0) {
                ForEach(Tab.allCases, id: \.rawValue) {tab in
                    Button {
                        withAnimation(.easeInOut(duration:0.2)) {
                            currentTab = tab
                        }
                    } label: {
                        Image(systemName: currentTab == tab ? fillImage: tab.systemImage)
                     //   Image(systemName: tab.systemImage)
                            .renderingMode(.template)
                            .frame(maxWidth:.infinity)
                            .foregroundColor(.white)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height:20)
        .padding(.top,20)
        .background(.ultraThinMaterial)
        .background(LinearGradient(colors: backgroundColors, startPoint:.leading, endPoint: .trailing))
        
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
