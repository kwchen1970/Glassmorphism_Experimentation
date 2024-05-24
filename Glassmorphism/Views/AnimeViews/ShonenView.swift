//
//  ShounenView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct ShonenView: View {
    var body: some View {
        LazyHStack {
            ForEach(animes) {anime in
                if anime.genre.contains("Shonen"){
                    NavigationLink(destination: DetailVC(anime:anime), label:{
                        CellpictureView(anime_cover: anime, width: 150,height:200, cornerRadius: 0)
                    })
                    
                }
            }
            
        }//.padding(.leading, 10)
    }
}

struct ShonenView_Previews: PreviewProvider {
    static var previews: some View {
        ShonenView()
    }
}

