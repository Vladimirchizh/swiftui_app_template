//
//  HomeView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 27.01.2022.
//

import SwiftUI

struct HomeView: View {
    @Namespace var namespace
    @Namespace var namespace_2
    @State var show = false
    @State var hasScrolled = false
    @State private var animate = false
    var body: some View {
        ZStack {
            
            ScrollView {
                TabView {
                    ForEach(courses) { course in
                        GeometryReader { proxy in
                            let minX = proxy.frame(in: .global).minX
                            FeaturedItem(course: course)
                                    .padding(.vertical, 40)
                                    .rotation3DEffect(.degrees(minX / -10), axis: (x: 0, y: 1, z: 0))
                                    .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
                                    .blur(radius: abs(minX / 40))
                                    .overlay(
                                            Image(course.image)
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fit)
                                                    .frame(height: 230)
                                                    .offset(x: 32, y: -90)
                                                    .offset(x: minX / 2)
                                    )


                        }

                    }
                }
                        .tabViewStyle(.page(indexDisplayMode: .never))
                        .frame(height: 410)
                        .background(
                                LavaItem()
                        )
                Text("Что нового?")
                        .font(.title)
                        .frame(maxWidth: .infinity,
                           alignment: .leading)
                        .padding(.horizontal, 30)
                VStack{
                    if !show {
                        
                        CourseItem(show: $show, namespace: namespace, feed: FeedItem(picture: "Group 45", headline: "LinguaTrip: YouTube", subhead: "Новые видео на канале"))
                            .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
                            .onTapGesture {
                                withAnimation(.spring(response: 0.6, dampingFraction: 0.8)) {
                                    show.toggle()

                                }
                            }
                            
                        
                    }
                    
                }
                if show {
                    CourseView(show: $show, namespace: namespace)
                }
                CourseItem(show: .constant(true), namespace: namespace_2,
                           feed: FeedItem(picture: "Group 106", headline: "Языковые курсы", subhead: "Найди и забронируй в приложении"))
                        .shadow(color: Color("Shadow").opacity(0.3), radius: 10, x: 0, y: 10)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            
    }
}
