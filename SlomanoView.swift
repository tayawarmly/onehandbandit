//
//  SlomanoView.swift
//  onehandbandit
//
//  Created by Taya on 25.08.2023.
//

import SwiftUI

struct SlomanoView: View {
    @State private var randomIcons = ["star", "star", "ferry"]
    var body: some View {
        ScrollView {
          
            LazyVGrid(columns: Array(repeating: GridItem(.flexible()), count: 3), spacing: 10) {
                ForEach(randomIcons, id: \.self){oneIcon in
                    Card(icon: oneIcon, iconColor: .orange, iconBgColor: Color(.systemGray6))}
            }
        }
    }
}

#Preview {
    SlomanoView()
}
