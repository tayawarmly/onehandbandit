//
//  ContentView.swift
//  onehandbandit
//
//  Created by Taya on 28.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var starsScores = 1000
    private var priceOne = 20
    private var priceTwo = 40
    private var priceSuper = 80
  
    var iconsPac = ["lizard.fill", "ladybug.fill", "bird.fill"]
    @State private var randomIcons = ["star", "star", "star"
//                                      , "star", "star", "star", "star", "star", "star"
    ]
    @State private var testIcon: String = "star"
    @State private var testColor: Color = .orange
    
    @State private var showingInfo = false
    var body: some View {
        
        VStack {
            // заголовок
            Text("ONE HAND BANDIT")
                .font(.largeTitle.bold())
                .padding(.vertical)
            
            // ифно + баланс
            VStack(spacing: 30) {
                HStack(spacing: 10) {
                    Button {
                        showingInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .bold()
                            .foregroundColor(Color(.systemGray6).opacity(0.7))
                    }
                    .sheet(isPresented: $showingInfo) {
                        InfoView()
                    }

                    Text("БАЛАНС:")
                        .fontWeight(.semibold)
                    Rectangle()
                        .fill(.white.opacity(0.8))
                        .overlay{ Text(String(starsScores))
                                .bold()
                        }
                        .frame(width: 70, height: 20)
                        .cornerRadius(20)
                }
            
                // MARK: сетка с иконками
//                LazyVGrid(columns: [GridItem(.fixed(20))], alignment: .center, content: {
//                    ForEach(randomIcons, id:\.self){randomIcon in
//                        Card(icon: randomIcon, iconColor: .orange, iconBgColor: Color(.systemGray6))
//                    }
//                })
                
             
//                LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 2), spacing: 2, content: {
//                    ForEach(randomIcons, id:\.self){oneIcon in
//                        Card(icon: oneIcon, iconColor: .orange, iconBgColor: Color(.systemGray6))
//                       
//                    }
                ScrollView {
                  
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10, content: {
                        ForEach(randomIcons, id:\.self){oneIcon in
                            Card(icon: oneIcon, iconColor: .orange, iconBgColor: Color(.systemGray6))}
                    })
                  
                }
//                    )
                
                // MARK: кнопка старт 1 + 2
                // TODO: добавить вызов функций
                HStack(spacing: 15) {
                    Button {
//                        withAnimation(.easeOut(duration: 0.3)) {
//                            if testIcon == "bird.fill" {
//                                testIcon = "star"
//                                testColor = .orange
//                            } else {
//                                testIcon = "bird.fill"
//                                testColor = .blue
//                            }
//                            
//                            // cнимает деньги с первой кнопки
//                            starsScores = starsScores - priceOne
//                        }
                        startX15()
                    } label: {
                        Text("старт х1.5")
                    }
                    .bold()
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .frame(width: 150, height: 50)
                    .background(.blue.opacity(0.8), in: Capsule())
                    
                    Button("старт х2.5") {
                        
                    }
                    .bold()
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .frame(width: 150, height: 50)
                    .background(.blue.opacity(0.8), in: Capsule())
                }
            }
            
            // MARK: кнопка СУПЕРИГРА
            // этот спейсер не трогать
            Spacer()
            Button {} label: {
                Text ("СУПЕР ИГРА")
            }
            .bold()
            .foregroundStyle(.white)
            .font(.system(size: 25))
            .frame(width: 180, height: 70)
            .background(.cyan.opacity(0.8), in: Capsule())
            
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [.yellow, .red, .red]),
                           startPoint: .top, endPoint: .bottom))
    }
    
    
    // func newRandom
    func startX15() {
        getRandomIcons()
       // print(randomIcons)
    }
    
    func getRandomIcons() {
        randomIcons = Array()
        
        for _ in 1...3 {
            randomIcons.append(iconsPac.randomElement() ?? "house")
        }
    }
    
    func detectWin() {
        
    }
}

#Preview {
    ContentView()
}
