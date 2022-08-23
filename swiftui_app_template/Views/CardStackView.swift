//
//  CardsView2.0.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 13.07.2022.
//

import SwiftUI
import CardStack
import RiveRuntime

struct CardStackView: View {
    @State private var showText = false
    var it = RiveViewModel(fileName: "menu_buttons", stateMachineName: "STAR_Interactivity", artboardName: "LIKE/STAR"
    )
    var body: some View {
        CardStack(NewCardsItems) { item in
            ZStack{
                VStack{
                
                Button(item.text){
                    showText.toggle()
                }
                    .foregroundColor(.white)
                    .font(.title)
                
                if showText {
                    Text(item.translate)
                        .foregroundColor(.white)
                        .font(.title2)
                }
                    
                        
            }
            
                Button {
                        try? it.setInput("active", value: true)
                            DispatchQueue.main.asyncAfter(deadline:.now()+1){
                                try? it.setInput("active", value: false)
                            }
                        
                        } label: {
                            VStack(spacing: 0) {
                                it.view()
                                    .frame(width: 40, height: 40)
                                }
                            }
                        .frame(height: 300, alignment: .bottom)
                
                    
            }
                .background(
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(item.color)
                        .frame(width: 300, height: 400)
            )
        }
        
    }
}

struct CardStack_Previews: PreviewProvider {
    static var previews: some View {
        CardStackView()
    }
}
