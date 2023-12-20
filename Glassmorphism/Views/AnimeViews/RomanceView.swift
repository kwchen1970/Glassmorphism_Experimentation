//
//  RomanceView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct RomanceView: View {
    var body: some View {
        LazyHStack {
            ForEach(animes) {anime in
                if anime.genre.contains("Romance"){
                    CellpictureView(anime_cover: anime, width: 150,height:200, cornerRadius: 0)
                }
            }
        }
    }
}

struct RomanceView_Previews: PreviewProvider {
    static var previews: some View {
        RomanceView()
    }
}
