//
//  CustomNavBar.swift
//  Glassmorphism
//
//  Created by Kathleen Chen on 12/28/23.
//

import SwiftUI
let pink = UIColor(red: 1, green: 0, blue: 127/255, alpha: 1)

struct CustomNavBar: View {
    var body: some View {
        VStack{
            HStack{
                Text("anirate")
                    .font(.system(size: 48, weight: .bold, design: .serif))
                    .foregroundColor(Color(pink))
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width:30, height: 30, alignment: .center)
                
            }
            .fixedSize(horizontal: false, vertical: true)
            .background(.cyan)
            .padding()
            Spacer()
        }
    }
}

struct CustomNavBar_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavBar()
    }
}
