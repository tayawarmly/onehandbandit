//
//  Card.swift
//  onehandbandit
//
//  Created by Taya on 03.08.2023.
//

import SwiftUI

// компонент чтобы запихнуть в папку для частого использования
struct CardView: View {
    var icon: String
    var iconColor: String
    var iconBgColor: String
    
    var body: some View {
        Image(systemName: icon)
            .resizable()
            .scaledToFit()
            .aspectRatio(contentMode: .fit)
            .foregroundStyle(Color(iconColor))
            .background(
                RoundedRectangle(cornerRadius: 25)
                    .fill(Color(iconBgColor).opacity(0.9))
                    .frame(width: 110, height: 110, alignment: .center)
            )
            .padding(10)
            .frame(width: 110, height: 110, alignment: .center)
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
