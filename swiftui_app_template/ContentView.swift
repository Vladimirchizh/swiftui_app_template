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
                    VStack(alignment:.leading, spacing: 12){
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
                    .foregroundColor(.white)
                    .background(Image("pro1_out")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .matchedGeometryEffect(id: "background", in: namespace)
                    )
                    .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                            .matchedGeometryEffect(id: "mask", in: namespace)
                            )
                    .frame(height:300)
                    .padding(20)
                } else {
                    
                    ScrollView {
                        VStack(alignment:.leading, spacing: 12){
                            Spacer()
                            Text("Image generation with StyleGAN and CLIP".uppercased())
                                .font(.footnote.weight(.semibold))
                                .matchedGeometryEffect(id: "subtitle", in: namespace)
                            Text("StyleGAN")
                                .font(.largeTitle.weight(.black))
                                .matchedGeometryEffect(id: "title", in: namespace)
                                .frame(maxWidth: .infinity,
                                       alignment: .leading)
                            
                            
                        }
                        .frame(height:500)
                        .padding(20)
                        .foregroundColor(.white)
                        .background(Image("pro1_out")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .matchedGeometryEffect(id: "background", in: namespace)
                                    )
                        .mask(RoundedRectangle(cornerRadius: 30, style: .continuous)
                                .matchedGeometryEffect(id: "mask", in: namespace)
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
