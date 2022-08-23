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
    var videos: [Video] = VideoList.topTen
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
            VStack{
                Spacer()
            }
            .frame(maxWidth: .infinity)
            .frame(height:500)
            .foregroundColor(.black)
            .background(Image("Group 45")
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
                    Text("Новые видео на канале".uppercased())
                        .font(.footnote.weight(.semibold))
                        .matchedGeometryEffect(id: "subtitle", in: namespace)
                    Divider()
                    Text("Lingua trip: YouTube")
                        .font(.largeTitle)
                        .matchedGeometryEffect(id: "title", in: namespace)
                        .frame(maxWidth: .infinity,
                               alignment: .leading)
                    
                    
                    
                    
                    
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
            Spacer().frame(height: 80)
            ForEach(videos, id: \.id){ video in
                HStack{
                    Image(video.imageName)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 100)
                        .cornerRadius(12)
                        .padding(.vertical, 4)
                    VStack(alignment: .leading, spacing: 5){
                        Text(video.title)
                            .fontWeight(.semibold)
                            .lineLimit(2)
                            // .minimumScaleFactor(0.5)
                        Text(video.uploadDate)
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                        Text(String(video.viewCount))
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                            .minimumScaleFactor(0.6)
                    }
                }
                .padding(.horizontal, 7)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
                
            }
            
            
            
        }
        .background(.white)
    }
}

struct CourseView_Previews: PreviewProvider {
    @Namespace static var namespace
    static var previews: some View {
        CourseView(show: .constant(true), namespace: namespace)
    }
}
