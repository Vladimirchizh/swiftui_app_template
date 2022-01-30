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
            Image("Image")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .frame(width: 26.0, height: 26.0)
                .cornerRadius(10)
                .padding(9)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
             // .strokeStyle(cornerRadius(16))
            Text("Основной курс")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,
                   alignment: .leading)
            Text("20 sections - 3 hours".uppercased())
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(.secondary)
            Text("do your homework with us while you are on the go")
                .font(.footnote)
                .multilineTextAlignment(.leading)
                .foregroundColor(.secondary)
                .lineLimit(2)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.all, 20.0)
        .padding(.vertical, 20)
        .frame(height: 350.0)
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
        // strokeStyle()
        .padding(.horizontal, 20)
        
        .overlay(
            Image("Group 36")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 230)
                .offset(x:32, y: -70)
        )
    }

}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
