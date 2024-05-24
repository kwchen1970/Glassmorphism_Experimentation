//
//  DetailVC.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 5/23/24.
//

import SwiftUI

struct DetailVC: View {
    var anime: Anime
    var body: some View {
        NavigationView{
            VStack{
                Text("Detail" + anime.name)
            }
        }
    }
}

struct DetailVC_Previews: PreviewProvider {
    static var previews: some View {
        DetailVC(anime: animes[0])
    }
}
