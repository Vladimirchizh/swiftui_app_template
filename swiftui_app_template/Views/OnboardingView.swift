//
//  StartView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI

struct Onboarding:View{
    //@State var startCards: [StartCard] = startCards
    var body: some View{
        
        ZStack{
            LavaItem()
                .padding(-240)
            VStack{
                TabView {
                    ForEach(startCards){card in
                        OnboardingCardView(card: card)
                    }
                }
                    .tabViewStyle(PageTabViewStyle())
                ButtonItem(text: "Come in")
            }
        }
    }
    
}


struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
