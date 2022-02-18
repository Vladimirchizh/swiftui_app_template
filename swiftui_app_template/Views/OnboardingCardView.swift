//
//  OnboardingCardView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI



struct OnboardingCardView: View {
    var card: StartCard = startCards[0]
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(card.toptext.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
            Text(card.header)
                .font(.largeTitle)
                .bold()
            Text(card.preheader)
                .font(.subheadline)
            
            
        }
        .padding(30)
        .background(LavaItem())
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .padding(20)
        
    }
}


struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardView()
    }
}
