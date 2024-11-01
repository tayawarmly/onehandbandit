//
//  Card.swift
//  onehandbandit
//
//  Created by Taya on 30.08.2023.
//

import Foundation

struct Card: Codable, Identifiable {
    let id: String
    let icon: String
    var iconColor: String
    var bgColor: String
}

// расширение для текущей модели, в котором хранятся демо данные
extension Card {
    static var MOCK_CARD: [Card] = [
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white"),
        .init(id: NSUUID().uuidString, icon: "star", iconColor: "orange", bgColor: "white")
    ]
}
