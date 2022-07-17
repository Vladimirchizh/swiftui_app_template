//
//  OnboardingCardItem.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI
import SwiftUIGIF


struct OnboardingCardItem: View {
    var card: StartCard = startCards[0]
    @State private var imageData: Data? = nil

    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(card.toptext.uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundColor(Color.white)
            
            Text(card.header)
                .font(.largeTitle)
                .bold()
                .frame(maxWidth: .infinity, alignment: .leading)
                .foregroundColor(Color.white)
            GIFImage(name: card.gifimage)
                .frame(width: 300, height: 260, alignment: .leading)
            
            Text(card.preheader)
                .font(.subheadline)
                .foregroundColor(Color.white)
        }
        // .foregroundColor(.white)
        .padding(30)
        //.background(LavaItem())
        .background(.ultraThinMaterial)
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
        .padding(20)
        .shadow(radius: 10)
        
    }
    
}


struct OnboardingCardView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingCardItem()
    }
}
