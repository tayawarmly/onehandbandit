//
//  ContentView.swift
//  onehandbandit
//
//  Created by Taya on 28.07.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var starsScores: Double = 1000
    private var priceOne: Double = 20
    private var priceTwo: Double = 40
    private var priceSuper: Double = 80
    private var ratio15 = 1.5
    private var ratio25 = 2.5
    private var ratioSuper = 4.0
    
    var iconsPackStrings: [String : String] = ["lizard.fill" : "green", "ladybug.fill" : "red", "bird.fill" : "blue"]
    
    @State private var randomCards: [Card] = Card.MOCK_CARD
    @State private var testIcon: String = "star"
    @State private var testColor: Color = .orange
    @State private var showingInfo = false
    
    var body: some View {
        
        VStack {
            
            VStack(spacing: 30) {
                
                Text("ONE HAND BANDIT")
                    .font(.largeTitle.bold())
                    .shadow(radius: 2, x : 2, y : 2)
                    .padding(.vertical)
                
                HStack(spacing: 10) { // инфо + баланс
                    Button {
                        showingInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .bold()
                            .foregroundColor(Color(.white).opacity(0.7))
                            .shadow(radius: 2, x : 2, y : 2)
                    }
                    .sheet(isPresented: $showingInfo) {
                        InfoView()
                    }
                    
                    Text("БАЛАНС:")
                        .fontWeight(.semibold)
                        .shadow(radius: 1, x : 1, y : 1)
                    Rectangle()
                        .fill(.white.opacity(0.8))
                        .overlay{ Text(String(starsScores))
                                .bold()
                                .shadow(radius: 1, x : 1, y : 1)
                        }
                        .frame(width: 70, height: 20)
                        .cornerRadius(20)
                }
                
                // MARK: сетка с иконками
                
                ScrollView {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 25, content: {
                        ForEach(randomCards) { card in
                            CardView(icon: card.icon, iconColor: card.iconColor, iconBgColor: card.bgColor)
                        }
                    })
                    .background(.yellow.opacity(0.8))
                    .cornerRadius(10)
                }
                
                // MARK: кнопка старт 1 + 2
                // TODO: добавить анимацию
                
                HStack(spacing: 15) {
                    
                    Button {
                        startX15()
                    } label: {
                        Text("старт х1.5")
                            .shadow(radius: 1, x : 1, y : 1)
                    }
                    .bold()
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .frame(width: 150, height: 50)
                    .background(.blue.opacity(0.9), in: Capsule())
                    
                    Button  {
                        startX25()
                    } label: {
                        Text ("старт х2.5")
                            .shadow(radius: 1, x : 1, y : 1)
                    }
                    .bold()
                    .foregroundStyle(.white)
                    .font(.system(size: 20))
                    .frame(width: 150, height: 50)
                    .background(.blue.opacity(0.9), in: Capsule())
                }
                .padding([.vertical, .horizontal])
            }
            
            
            // MARK: кнопка СУПЕРИГРА
            Button {
                
                startSuper()
                
            } label: {
                Text ("СУПЕР ИГРА")
                    .shadow(radius: 2, x : 2, y : 2)
            }
            .bold()
            .foregroundStyle(.white)
            .font(.system(size: 25))
            .frame(width: 180, height: 70)
            .background(.pink.opacity(0.9), in: Capsule())
            
            Spacer()
        }
        .background(.yellow.opacity(0.8))
        .cornerRadius(10)
        .background(Image("bgPhoto"))
    }
    
    //MARK: функции для кнопок
    
    func getRandomCards() { // рандомно выбирает из 9 карт
        randomCards = Array()
        
        for _ in 1...9 {
            let randomItem = iconsPackStrings.randomElement()
            let card = Card(id: NSUUID().uuidString, icon: randomItem?.key ?? "star" , iconColor: randomItem?.value ?? "orange", bgColor: "white")
            randomCards.append(card)
        }
    }
    
    func startX15() {   // действия на кнопку 1.5 выигрышный ряд, посчет монет
        getRandomCards()
        oneRow15()
    }
    
    func oneRow15() {
        starsScores = starsScores - priceOne // cнимает деньги с первой кнопки
        
        if randomCards[3].icon == randomCards[4].icon &&
            randomCards[4].icon == randomCards[5].icon &&
            randomCards[3].icon == randomCards[5].icon {
            
            starsScores += priceOne * ratio15
            
            randomCards[3].bgColor = "green"
            randomCards[3].iconColor = "white"
            randomCards[4].bgColor = "green"
            randomCards[4].iconColor = "white"
            randomCards[5].bgColor = "green"
            randomCards[5].iconColor = "white"
            
        }
    }
    
    func startX25() {    // действия на кнопку 2.5: выигрышный ряд, посчет баллов
        getRandomCards()
        oneRow25()
    }
    
    func oneRow25() {
        
        starsScores = starsScores - priceTwo
        
        if randomCards[3].icon == randomCards[4].icon &&
            randomCards[4].icon == randomCards[5].icon &&
            randomCards[3].icon == randomCards[5].icon {
            
            starsScores += priceTwo * ratio25
            
            randomCards[3].bgColor = "green"
            randomCards[3].iconColor = "white"
            randomCards[4].bgColor = "green"
            randomCards[4].iconColor = "white"
            randomCards[5].bgColor = "green"
            randomCards[5].iconColor = "white"
            
        }
    }
    
    func startSuper() {     // действия на кнопку суперигра: выигрышный ряд, посчет баллов
        getRandomCards()
        oneRowSuper()
    }
    
    func oneRowSuper() {
        
        starsScores = starsScores - priceSuper
        
        if randomCards[3].icon == randomCards[4].icon &&
            randomCards[4].icon == randomCards[5].icon &&
            randomCards[3].icon == randomCards[5].icon {
            
            starsScores += priceSuper * ratioSuper
            
            randomCards[3].bgColor = "green"
            randomCards[3].iconColor = "white"
            randomCards[4].bgColor = "green"
            randomCards[4].iconColor = "white"
            randomCards[5].bgColor = "green"
            randomCards[5].iconColor = "white"
            
        }
    }
}

#Preview {
    ContentView()
}
