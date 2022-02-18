//
//  ButtonItem.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI

struct ButtonItem: View {
    var text: String
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .foregroundColor(Color.white)
            .padding()
            .padding(.horizontal)
            .background(.ultraThinMaterial)
            .cornerRadius(30)
            .shadow(radius: 10)
    }
}

struct ButtonItem_Previews: PreviewProvider {
    static var previews: some View {
        ButtonItem(text: "Next")
    }
}
