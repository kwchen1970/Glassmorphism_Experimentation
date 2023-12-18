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
                        
                    }
                } header: {
                    Text("Shonen")
                        .modifier(SectionHeaderStyling())
                    
                }
                Section {
                    ScrollView(.horizontal) {
                        AllView()
                    }
                .frame(height:250)
                } header: {
                    Text("All")
                        .modifier(SectionHeaderStyling())
                }
                
            }.padding()
        }
    }
}
struct SectionHeaderStyling: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(maxWidth:.infinity,alignment:.leading)
            .background{
                Color.clear
            }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
