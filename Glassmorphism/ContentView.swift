//
//  ContentView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/2/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            
            ScrollView {
                ScrollView(.horizontal) {
                    AllView()
                    .padding()
                }
                .frame(height:300)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
