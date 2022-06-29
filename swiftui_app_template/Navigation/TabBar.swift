//
//  TabBar.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 30.01.2022.
//

import SwiftUI
import RiveRuntime

struct TabBar: View {
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal
    var body: some View {

        ZStack(alignment: .bottom){
            Group{
                switch selectedTab {
                case .home:
                    HomeView()
                case .calendar:
                    ContentView()
                case .cards:
                    QuizView()
                case .account:
                    AccountView(
                            user: User(
                                    picture: "VladimirChizhevskiy",
                                    firstName: "Vladimir",
                                    lastName: "Chizhevskiy",
                                    phone: "+79281515366",
                                    email: "vdchizhevskiy@gmail.com",
                                    level: "Advanced II"
                            )
                    )
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems){item in
                    Button{
                        try? item.icon.setInput("active", value: true)
                        DispatchQueue.main.asyncAfter(deadline:.now()+1){
                            try? item.icon.setInput("active", value: false)
                        }
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.7)){
                            selectedTab = item.tab
                            color = item.color
                        }
                    } label: {
                        VStack(spacing: 0) {
                            item.icon.view()
                                .frame(width: 44, height: 40)
                            /* Image(item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 44, height: 29) */
                            Text(item.text)
                                .font(.caption2)
                                .lineLimit(1)
                            
                        }
                        .frame(maxWidth: .infinity)
                        
                    }
                    .foregroundStyle(selectedTab == item.tab ? .primary: .secondary)
                    // .blendMode(selectedTab == item.tab ? .overlay: .normal)
                }
            }
            .padding(.horizontal, 8)
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 34, style: .continuous))
            .background(
                HStack {
                    if selectedTab == .account{ Spacer() }
                    if selectedTab == .calendar{ Spacer() }
                    if selectedTab == .cards{
                        Spacer()
                        Spacer()
                    }
                    Circle().fill(color).frame(width: 88)
                    if selectedTab == .home { Spacer() }
                    if selectedTab == .calendar {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .cards { Spacer() }
                }
                .padding(.horizontal,8)
                
            )
            .overlay(
                HStack{
                    if selectedTab == .account { Spacer() }
                    if selectedTab == .calendar { Spacer() }
                    if selectedTab == .cards {
                        Spacer()
                        Spacer()
                    }
                    Rectangle()
                        .fill(color)
                        .frame(width:28, height:5)
                        .cornerRadius(3)
                        .frame(width:88)
                        .frame(maxHeight: .infinity, alignment: .top)
                    if selectedTab == .home { Spacer() }
                    if selectedTab == .calendar {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .cards { Spacer() }
                }
                .padding(.horizontal, 8)
                
            )
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
            
        }
    }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
