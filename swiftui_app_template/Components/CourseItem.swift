//
//  CourseItem.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 31.01.2022.
//

import SwiftUI

struct CourseItem: View {
    
    @Binding var show: Bool
    var namespace: Namespace.ID
    
    var body: some View {
        
        VStack{
            Spacer()
            VStack(alignment:.leading, spacing: 12) {
                Text("Новые карточки")
                    .font(.largeTitle)
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity,
                       alignment: .leading)
                Text("для самостоятельного изучения".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
            }
            .padding(20)
            .background(
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
                    .blur(radius: 30)
                    .matchedGeometryEffect(id: "blur", in: namespace)
            )
            
        }
        .foregroundColor(.white)
        .background(Image("Group 15")
                        .resizable()
                        .aspectRatio(contentMode: .fit )
                        .matchedGeometryEffect(id: "image", in: namespace)
                    )
        .background(LavaItem()
                        .rotationEffect(.degrees(180.0))
                        .aspectRatio(contentMode: .fill )
                        .matchedGeometryEffect(id: "background", in: namespace)
                        .offset(y:-50)
                    )
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
                )
        .frame(height:300)
        .padding(20)
    }
}

struct CourseItem_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseItem(show: .constant(true), namespace: namespace)
    }
}
