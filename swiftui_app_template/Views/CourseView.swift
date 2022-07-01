//
//  CourseView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 31.01.2022.
//

import SwiftUI

struct CourseView: View {
    
    @Binding var show: Bool
    var namespace: Namespace.ID
    
    var body: some View {
        ZStack {
            ScrollView {
                cover
                
            }
            .ignoresSafeArea() 
            Button{
                withAnimation(.spring (response:0.6, dampingFraction:0.8)){
                    show.toggle()
                }
            } label: {
                Image(systemName: "xmark")
                    .font(.body.weight(.bold ))
                    .foregroundColor(.secondary)
                    .padding(8)
                    .background(.ultraThinMaterial, in: Circle())
            }
            .frame(maxWidth: .infinity,  maxHeight: .infinity, alignment: .topTrailing)
            .padding(20)
            .offset(y: 20)
            .ignoresSafeArea()
        }
    }
    var cover: some View{
        VStack{
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height:500)
        .foregroundColor(.black)
        .background(Image("Group 15")
                        .resizable()
                        .aspectRatio(contentMode: .fill )
                        .matchedGeometryEffect(id: "image", in: namespace)
                    )
        .background(LavaItem()
                        .rotationEffect(.degrees(180.0))
                        .aspectRatio(contentMode: .fill )
                        .matchedGeometryEffect(id: "background", in: namespace)
                    )
        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                .matchedGeometryEffect(id: "mask", in: namespace)
        )
        .overlay(
            VStack(alignment:.leading, spacing: 12){
                Text("для самостоятельного изучения".uppercased())
                    .font(.footnote.weight(.semibold))
                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                Text("Новые карточки")
                    .font(.largeTitle)
                    .matchedGeometryEffect(id: "title", in: namespace)
                    .frame(maxWidth: .infinity,
                           alignment: .leading)
                Divider()
                HStack{
                    Image("Avatar Default")
                        .resizable()
                        .frame(width: 26, height: 26)
                        .cornerRadius(10)
                    
                    
                }
                
            }
                .padding(20)
                .background(
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .mask(RoundedRectangle(cornerRadius: 30,style: .continuous))
                            .matchedGeometryEffect(id: "blur", in: namespace)
                    )
                .offset(y:250)
                .padding(20)
            
        )
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseView(show: .constant(true), namespace: namespace)
    }
}
