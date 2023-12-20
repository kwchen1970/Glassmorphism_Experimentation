//
//  SciFiView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct SciFiView: View {
    var body: some View {
        LazyHStack {
            ForEach(animes) {anime in
                if anime.genre.contains("Sci-Fi"){
                    CellpictureView(anime_cover: anime, width: 150,height:200, cornerRadius: 0)
                }
            }
        }
    }
}

struct SciFiView_Previews: PreviewProvider {
    static var previews: some View {
        SciFiView()
    }
}
