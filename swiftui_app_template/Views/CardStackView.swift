//
//  CardsView2.0.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 13.07.2022.
//

import SwiftUI
import CardStack


struct CardStackView: View {
    
    var body: some View {
        CardStack(NewCardsItems) { item in
            RoundedRectangle(cornerRadius: 20, style: .continuous)
                .fill(item.color)
                .frame(width: 300, height: 400)
        }
        
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
    }
}
