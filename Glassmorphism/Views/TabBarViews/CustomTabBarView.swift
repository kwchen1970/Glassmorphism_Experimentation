//
//  CustomTabBarView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/18/23.
//

import SwiftUI

struct CustomTabBarView: View {
    @Binding var currentTab: Tab
    var body: some View {
        HStack(spacing: 0.0) {
            ForEach(Tab.allCases, id: \.rawValue) {tab in
                Button {
                    withAnimation(.easeInOut) {
                        currentTab = tab
                    }
                } label: {
                    Image(systemName: tab.systemImage)
                        .renderingMode(.template)
                        .frame(maxWidth:.infinity)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(maxWidth: .infinity)
        .background(.black)
    }
}

struct CustomTabBarView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
