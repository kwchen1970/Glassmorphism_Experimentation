//
//  StarRatingView.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 5/27/24.
//

import SwiftUI

struct StarRatingView: View {
    @Binding var rating: Int
    var label = ""
    var maximumRating = 5
    
    var offImage: Image?
    var onImage = Image(systemName:"star.fill")
    var offColor = Color.gray
    var onColor = Color.pink
    
    
    var body: some View{
        HStack{
            if label.isEmpty == false{
                Text(label)
            }
            ForEach(1..<maximumRating + 1, id: \.self){ number in
                Button{
                    rating = number
                } label: {
                    image(for: number)
                        .foregroundStyle(number > rating ? offColor: onColor)
                }
            }
        }
    }
    
    func image(for number: Int) -> Image{
        if number > rating{
            offImage ?? onImage
        } else{
            onImage
        }
        return onImage
    }
    
}

struct StarRatingView_Previews: PreviewProvider {
    static var previews: some View {
        StarRatingView(rating: .constant(3))
    }
}
