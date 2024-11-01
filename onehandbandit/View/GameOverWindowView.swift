//
//  GameOverWindow.swift
//  onehandbandit
//
//  Created by Taya on 24.08.2023.
//

import SwiftUI

struct GameOverWindowView: View {
    var body: some View {
        ZStack {
//            LinearGradient(gradient: Gradient(colors: [.yellow, .white]),
//                                      startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack() {
                
            
                Text("КОНЕЦ ИГРЫ")
                    .font(.largeTitle)
                    .shadow(radius: 2, x : 2, y : 2)
                    .padding(10)
                HStack() {
                    Button {
                        
                    } label: {
                        Text("заново")
                            .tint(.white)
                            .shadow(radius: 2, x : 2, y : 2)
                            .padding(10)
                    }
                    
                    Button {
                        
                    } label: {
                        Text("выйти")
                            .tint(.white)
                            .shadow(radius: 2, x : 2, y : 2)
                            .padding(10)
                    }
                }
            }
            .background(.yellow)
            .cornerRadius(15)
        }
        .background(Image("bgGameOver"))
    }
      
}
#Preview {
    GameOverWindowView()
}
