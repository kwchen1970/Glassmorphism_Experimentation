//
//  IsekaiView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct IsekaiView: View {
    var body: some View {
        LazyHStack {
            ForEach(animes) {anime in
                if anime.genre == "Isekai"{
                    CellpictureView(anime_cover: anime, width: 150,height:200, cornerRadius: 0)
                }
            }
        }
    }
}

struct IsekaiView_Previews: PreviewProvider {
    static var previews: some View {
        IsekaiView()
    }
}
