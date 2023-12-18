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
            ScrollView{
                Section {
                    ScrollView(.horizontal) {
                        ShonenView()
                        .padding()
                    }
                } header: {
                    Text("Shonen")
                    
                }
                Section {
                    ScrollView(.horizontal) {
                        AllView()
                        .padding()
                    }
                .frame(height:250)
                } header: {
                    Text("All")
                }
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
