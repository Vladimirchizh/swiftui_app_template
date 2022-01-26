//
//  ContentView.swift
//  swiftui_app_template
//
//  Created by Apple on 13.12.2021.
//

import SwiftUI

struct ContentView: View {
    @Namespace var namespace
    @State var show = false

    var body: some View {
        ZStack {
                if !show { 
                    VStack{
                        Spacer()
                        VStack(alignment:.leading, spacing: 12) {
                            Text("StyleGAN")
                                .font(.largeTitle.weight(.black))
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(maxWidth: .infinity,
                                   alignment: .leading)
                            Text("Image generation with StyleGAN and CLIP".uppercased())
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
                    .background(Image("Rectangle 8")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill )
                                    .matchedGeometryEffect(id: "background", in: namespace)
                                )
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                            )
                    .frame(height:300)
                    .padding(20)
                } else {
                    
                    ScrollView {
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
                        .background(Image("Rectangle 8")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill )
                                        .matchedGeometryEffect(id: "background", in: namespace)
                                    )
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .matchedGeometryEffect(id: "mask", in: namespace)
                        )
                        .overlay(
                            VStack(alignment:.leading, spacing: 12){
                                Text("Image generation with StyleGAN and CLIP".uppercased())
                                    .font(.footnote.weight(.semibold))
                                    .matchedGeometryEffect(id: "subtitle", in: namespace)
                                Text("StyleGAN")
                                    .font(.largeTitle.weight(.black))
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
            
            }.onTapGesture {
                withAnimation{
                    show.toggle()
                    
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
