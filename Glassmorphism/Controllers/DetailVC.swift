//
//  DetailVC.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 5/23/24.
//

import SwiftUI

struct DetailVC: View {
    var anime: Anime
//    let width: CGFloat
//    let height: CGFloat
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing:0){
                Image(anime.image)
                    .resizable()
                    .frame(width: 400, height: 360)
                    .aspectRatio(contentMode: .fill)
                    .scaledToFill()
                    .offset(y: -10)
                    .edgesIgnoringSafeArea(.top)
                Text(anime.name)
                    .offset(y:-50)
                
            }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
            Spacer()
        }
    }
}

struct DetailVC_Previews: PreviewProvider {
    static var previews: some View {
        DetailVC(anime: animes[0])
    }
}
