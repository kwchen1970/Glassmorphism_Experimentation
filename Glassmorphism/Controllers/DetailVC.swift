//
//  DetailVC.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 5/23/24.
//
import Foundation
import SwiftUI

struct DetailVC: View {
    var anime: Anime
    
//    let width: CGFloat
//    let height: CGFloat
    var body: some View {
        NavigationView{
            ScrollView{
                VStack(alignment: .leading, spacing:0){
                    VStack(alignment: .leading, spacing:0){
                        Image(anime.image)
                            .resizable()
                            .frame(width: 400, height: 360)
                            .aspectRatio(contentMode: .fill)
                            .scaledToFill()
                            .offset(y: -10)
                    }.mask(LinearGradient(gradient: Gradient(stops: [
                        .init(color: .black, location: 0),
                        .init(color: .black, location: 0.5),
                        .init(color: .clear, location: 0.9),
                        .init(color: .clear, location: 1)
            ]), startPoint: .center, endPoint: .bottom))
                    .edgesIgnoringSafeArea(.top)
                    
                    Text(anime.name)
                        .padding(10)
                        .offset(y:-50)
                        .font(.system(size: 36, weight: .bold))
                        .fontWeight(.medium)

                    HStack(spacing:2){
                        Text(anime.type_show)
                            .font(.system(size:20,weight:.semibold))
                        Text("•").lineLimit(1)
                            .truncationMode(.tail)
                            .font(.system(size:20,weight:.semibold))
                        Text(anime.genre)
                            .font(.system(size:20,weight:.semibold))
                                  
                    }.padding(10)
                    .offset(y:-70)
                    
                    Text("Summary")
                        .padding(10)
                        .font(.system(size: 26, weight:.semibold))
                        .offset(y:-80)
                    
                    ExpandableTextView(anime.summary, lineLimit: 6)
                        .offset(y:-90)
                        .padding(10)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Reviews")
                        .padding(10)
                        .font(.system(size: 26, weight:.semibold))
                        .offset(y:-100)
                    StarRatingView(rating:
                            .constant(Int(round(Double(anime.rating)))))
                        .font(.system(size:20,weight:.semibold))
                        .padding(5)
                        .offset(y:-110)
                    
                    
                }.frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    Spacer()
               
            }.edgesIgnoringSafeArea(.top)
            
        }
    }
}

struct DetailVC_Previews: PreviewProvider {
    static var previews: some View {
        DetailVC(anime: animes[0])
    }
}
