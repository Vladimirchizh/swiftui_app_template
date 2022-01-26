//
//  FeaturedItem.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 27.01.2022.
//

import SwiftUI

struct FeaturedItem: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8.0){
            Spacer()
            Image("Group 36")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
            // .strokeStyle(cornerRadius(16))
        }
        Text("some placeholder text")
            .font(.largeTitle)
            .fontWeight(.bold)
            .foregroundStyle(.linearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
            .lineLimit(1)
        
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
