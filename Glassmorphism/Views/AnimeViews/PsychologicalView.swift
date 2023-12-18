//
//  PsychologicalView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct PsychologicalView: View {
    var body: some View {
        LazyHStack {
            ForEach(animes) {anime in
                if anime.genre == "Psychological"{
                    CellpictureView(anime_cover: anime, width: 150,height:200, cornerRadius: 0)
                }
            }
        }
    }
}

struct PsychologicalView_Previews: PreviewProvider {
    static var previews: some View {
        PsychologicalView()
    }
}
