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
                    .padding(10)
                    .offset(y:-120)
                    .font(.system(size: 36, weight: .bold))
                    .fontWeight(.medium)
                Group{
                    Text(anime.type_show )
                        .font(.system(size: 20, weight: .semibold))
                        .offset(y:-130)
                        .padding(10)
                    Text(anime.rating)
                        .font(.system(size: 20, weight: .semibold))
                        .offset(y:-130)
                        .padding(10)
                }
                Text(anime.summary)
                    .padding(10)
                    
                
                
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
