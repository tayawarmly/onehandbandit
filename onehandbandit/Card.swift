//
//  Card.swift
//  onehandbandit
//
//  Created by Taya on 03.08.2023.
//

import SwiftUI

// компонент чтобы запихнуть в папку для частого использования
struct Card: View {
    var icon: String
    var iconColor: Color
    var iconBgColor: Color
    
    var body: some View {
        Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(iconColor)
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(iconBgColor.opacity(0.8))
                    .frame(width: 110, height: 110, alignment: .center)
            )
            .frame(width: 90, height: 90, alignment: .center)
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
//        Card(icon: "house.fill")
//            .background(.blue)
//            .previewLayout(.sizeThatFits)
        ContentView()
    }
}