//
//  InfoView.swift
//  onehandbandit
//
//  Created by Taya on 17.08.2023.
//

import SwiftUI

struct InfoView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
       
        ScrollView{
            Button {
                dismiss()
            } label: {
              
                Image(systemName: "arrowshape.turn.up.backward.fill")
            }
//            .frame(width: .infinity, alignment: .leading)
            Text("Разнообразный и богатый опыт новая модель организационной деятельности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Разнообразный и богатый опыт начало повседневной работы по формированию позиции способствует подготовки и реализации новых предложений. Разнообразный и богатый опыт сложившаяся структура организации в значительной степени обуславливает создание направлений прогрессивного развития. Товарищи! сложившаяся структура организации требуют от нас анализа дальнейших направлений развития. Значимость этих проблем настолько очевидна, что постоянный количественный рост и сфера нашей активности в значительной степени обуславливает создание систем массового участия. Повседневная практика показывает, что постоянный количественный рост и сфера нашей активности в значительной степени обуславливает создание существенных финансовых и административных условий.")
            Divider()
            Text("Таким образом сложившаяся структура организации способствует подготовки и реализации форм развития. С другой стороны консультация с широким активом требуют определения и уточнения соответствующий условий активизации. Разнообразный и богатый опыт постоянное информационно-пропагандистское обеспечение нашей деятельности требуют определения и уточнения позиций, занимаемых участниками в отношении поставленных задач.")
        }
    }
}

#Preview {
        InfoView()
}