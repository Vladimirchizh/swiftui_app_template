//
//  TabBar.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 30.01.2022.
//

import SwiftUI

struct TabBar: View {
    @State var selectedTab: Tab = .home
    @State var color: Color = .teal
    var body: some View {
        ZStack(alignment: .bottom){
            Group{
                switch selectedTab {
                case .home:
                    HomeView()
                case .explore:
                    LavaItem()
                case .notifications:
                    LavaItem()
                case .library:
                    LavaItem()
                }
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            HStack {
                ForEach(tabItems){item in
                    Button{
                        withAnimation(.spring(response: 0.3, dampingFraction: 0.17)){
                            selectedTab = item.tab
                            color = item.color
                        }
                    } label: {
                        VStack(spacing: 0) {
                            Image(systemName: item.icon)
                                .symbolVariant(.fill)
                                .font(.body.bold())
                                .frame(width: 44, height: 29)
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
                    if selectedTab == .library{ Spacer() }
                    if selectedTab == .explore{ Spacer() }
                    if selectedTab == .notifications{
                        Spacer()
                        Spacer()
                    }
                    Circle().fill(color).frame(width: 88)
                    if selectedTab == .home { Spacer() }
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications { Spacer() }
                }
                .padding(.horizontal,8)
                
            )
            .overlay(
                HStack{
                    if selectedTab == .library { Spacer() }
                    if selectedTab == .explore { Spacer() }
                    if selectedTab == .notifications {
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
                    if selectedTab == .explore {
                        Spacer()
                        Spacer()
                    }
                    if selectedTab == .notifications { Spacer() }
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
