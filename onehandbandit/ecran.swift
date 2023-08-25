//
//  ecran.swift
//  onehandbandit
//
//  Created by Taya on 15.08.2023.
//

import SwiftUI

struct ecran: View {
    var body: some View {
        
        HStack {
            Image(systemName: "trash.circle.fill")
                .resizable()
                .padding()
                .foregroundStyle(.red, .green)
                .frame(width: 100, height: 100)
        }
        .frame(width: .infinity, alignment: .trailing)
    }
}

struct ecran_Previews: PreviewProvider {
    static var previews: some View {
        ecran()
    }
}
