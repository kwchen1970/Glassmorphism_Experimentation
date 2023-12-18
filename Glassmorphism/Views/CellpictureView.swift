//
//  CellpictureView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/17/23.
//

import SwiftUI

struct CellpictureView: View {
    let anime_cover: Anime
    let width: CGFloat
    let height: CGFloat
    let cornerRadius: CGFloat
    
    var body: some View {
        VStack(alignment: .leading, spacing:0){
            Image(anime_cover.image)
                .resizable()
                .frame(width: width, height: height)
                .scaledToFill()
            Rectangle()
                .fill(.white)
                .frame(width:width, height: height/4)
                .overlay(alignment: .topLeading, content: {
                    Text(anime_cover.name).lineLimit(1).truncationMode(.tail)
                        .lineLimit(1)
                        .font(.system(size: height/12, weight: .bold))
                        .multilineTextAlignment(.leading)
                        .padding(3)
                        .frame(maxWidth: width, alignment: .leading)
                    
                })
                .overlay(alignment: .bottomLeading, content:{
                    HStack(spacing:2){
                        Text(anime_cover.type_show).lineLimit(1).truncationMode(.tail)
                            .multilineTextAlignment(.leading)
                            .font(.system(size: height/15, weight: .semibold))
                            .offset(y: -5)

                        Text("•").lineLimit(1).truncationMode(.tail)
                            .font(.system(size: height/15, weight: .semibold))
                            .multilineTextAlignment(.leading)
                            .offset(y: -5)

                        Text(anime_cover.genre).lineLimit(1).truncationMode(.tail)
                            .font(.system(size: height/15, weight: .semibold))
                            .offset(y: -5)
                    }
                    .padding(3)
                    .frame(maxWidth:width, alignment: .leading)
                })

        }
     //   .frame(maxWidth:width, maxHeight: height)
        
    }
}

struct CellpictureView_Previews: PreviewProvider {
    static var previews: some View {
        CellpictureView(anime_cover: animes[0], width: 150,height: 200, cornerRadius: 0)
    }
}
