//
//  AnimeTabView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/19/23.
//

import SwiftUI

struct AnimeTabView: View {
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
                } .padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        IsekaiView()
                    }
                } header: {
                    Text("Isekai")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        SliceofLifeView()
                    }
                } header: {
                    Text("Slice of Life")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        SportsView()
                    }
                } header: {
                    Text("Sports")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        RomanceView()
                    }
                } header: {
                    Text("Romance")
                        .modifier(SectionHeaderStyling())
                }.padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        PsychologicalView()
                    }
                } header: {
                    Text("Psychological")
                        .modifier(SectionHeaderStyling())
                }.padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        FantasyView()
                    }
                } header: {
                    Text("Fantasy")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
                Section {
                    ScrollView(.horizontal) {
                        SciFiView()
                    }
                } header: {
                    Text("Sci-Fi")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
                Section {
                    ScrollView(.vertical) {
                        AllView()
                    }
                    
                .frame(height:700)
                } header: {
                    Text("All")
                        .modifier(SectionHeaderStyling())
                } .padding(.leading,10)
            }
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

struct AnimeTabView_Previews: PreviewProvider {
    static var previews: some View {
        AnimeTabView()
    }
}
