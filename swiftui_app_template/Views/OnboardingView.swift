//
//  StartView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI

struct Onboarding:View{
    @State private var nextView = false
    var body: some View{
        if !nextView {
                ZStack {
                    LavaItem()
                            .padding(-240)
                    VStack {
                        TabView {
                            ForEach(startCards) { card in
                                OnboardingCardItem(card: card)
                            }
                        }
                                .tabViewStyle(PageTabViewStyle())
                        Button("Войти") {
                            withAnimation {
                                nextView.toggle()

                            }
                        }
                                .foregroundColor(Color.white)
                                .padding()
                                .padding(.horizontal)
                                .background(.ultraThinMaterial)
                                .cornerRadius(30)
                                .shadow(radius: 10)
                    }
                }
            }
        if nextView{
            TabBar()
        }
    }
    
}


struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
