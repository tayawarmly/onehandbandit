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
            LinearGradient(gradient: Gradient(colors: [.yellow, .white]),
                                      startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            VStack(spacing: 30) {
                
                
                Text("КОНЕЦ ИГРЫ")
                
                HStack(spacing: 30) {
                    Button {
                        
                    } label: {
                        Text("заново")
                    }
                    
                    Button {
                        
                    } label: {
                        Text("выйти")
                    }
                }
            }
        }
    }
}
#Preview {
    GameOverWindow()
}
