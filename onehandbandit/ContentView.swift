//
//  ContentView.swift
//  onehandbandit
//
//  Created by Taya on 28.07.2023.
//

import SwiftUI

struct CardModel: Identifiable {
    let id = UUID()
    let title: String
}

struct ContentView: View {
    
    @State var starsScores = 1000
    private var priceOne = 20
    private var priceTwo = 40
    private var priceSuper = 80
    
    var iconsPackStrings = ["lizard.fill", "ladybug.fill", "bird.fill"]    
    @State private var randomIcons = [CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star"),
                                      CardModel(title: "star")
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
                
                ScrollView {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 25, content: {
                        ForEach(randomIcons) { model in
                            Card(icon: model.title, iconColor: .orange, iconBgColor: Color(.systemGray6))
                        }
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
                .padding([.vertical, .horizontal])
            }
            
            // MARK: кнопка СУПЕРИГРА
            
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
        
        for _ in 1...9 {
            let card = CardModel(title: iconsPackStrings.randomElement()!)
            randomIcons.append(card)
        }
    }
}

#Preview {
    ContentView()
}
