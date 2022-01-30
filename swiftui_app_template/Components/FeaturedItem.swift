//
//  FeaturedItem.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 27.01.2022.
//

import SwiftUI

struct FeaturedItem: View {
    @State private var animate = false
    var body: some View {
        ScrollView{
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
            .background(

                           ZStack {
                               Circle()
                                   .fill(.purple)
                                   .blur(radius: 60)
                                   .offset(x:animate ? 10 : 130,y:animate ? 20 : 160)
                                   .rotation3DEffect(.degrees(animate ? 30 : 0), axis: (x: animate ? 0 : 0.5, y: animate ? 0.2 : 0.7, z: animate ? 0.4 : 0))
                               RoundedRectangle(cornerRadius: 10)
                                   .fill(.pink)
                                   .blur(radius: 20)
                                   .offset(x: animate ? -120 : 10,y :animate ? -100 : 20)
                                   .rotation3DEffect(.degrees(animate ? 80 : 20), axis: (x: animate ? 0.4 : 0, y: animate ? 0 : 0.1, z: animate ? 0 : 0.5))
                               Rectangle()
                                   .fill(.purple)
                                   .blur(radius: 60)
                                   .offset(x: animate ? -60 : 20,y: animate ? 5 : 140)
                                   .rotation3DEffect(.degrees(animate ? 20 : 50), axis: (x: animate ? 0 : 0, y: animate ? 0.4 : 0.2, z: animate ? 0.9 : 0.3))
                               Capsule()
                                   .fill(.mint)
                                   .blur(radius: 40)
                                   .offset(x: animate ? 60 : 0,y: animate ? -10 : 140)
                                   .rotation3DEffect(.degrees(animate ? -30 : 0), axis: (x: animate ? 0.6 : 0.1, y: animate ? 0.2 : 0.3, z: animate ? 0.1 : 0.4))
                               Circle()
                                   .fill(.blue)
                                   .blur(radius: 50)
                                   .offset(x: animate ? 90 : -10,y:animate ? -90 : 40)
                                   .rotation3DEffect(.degrees(animate ? 10 : 0), axis: (x: animate ? 0.4 : 0.6, y: animate ? 0.1 : 0, z: animate ? 0.6 : 0.4))
                               RoundedRectangle(cornerRadius: 10)
                                   .fill(.teal)
                                   .blur(radius: 60)
                                   .offset(x: animate ? -90 : 40,y:animate ? 90 : -20)
                                   .rotation3DEffect(.degrees(animate ? -20 : 10), axis: (x: animate ? 0 : 0.2, y: animate ? 0 : 0 , z: animate ? 0.4 : 0))
                               Capsule()
                                   .fill(.blue)
                                   .blur(radius: 70)
                                   .offset(x: animate ? 10 : 170 ,y:animate ? 0 : -150)
                                   .opacity(0.4)
                                   .rotation3DEffect(.degrees(animate ? 30 : 0), axis: (x: animate ? 0 : 0.1, y: animate ? 0.5 : 0.1, z: animate ? 0.2 : 0.6))
                           }
                            .offset(x:-50, y:-60)
                    
            )
            .overlay(
                Image("Group 36")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 230)
                    .offset(x:32, y: -70)
            )
        }
    }
}

struct FeaturedItem_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItem()
    }
}
