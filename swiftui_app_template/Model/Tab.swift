//
//  Tab.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 01.02.2022.
//

import SwiftUI

struct TabItem: Identifiable{
    
    var id = UUID()
    var text: String
    var icon: String
    var tab: Tab
    var color: Color
}


var tabItems = [
    TabItem(text: "Главная", icon: "house", tab: .home, color: .teal),
    TabItem(text: "Explore", icon: "magnifyingglass", tab: .explore, color: .blue),
    TabItem(text: "Уведомления", icon: "bell", tab: .notifications, color: .purple),
    TabItem(text: "Library", icon: "rectangle.stack", tab: .library, color: .mint)
]


enum Tab: String{
    case home
    case explore
    case notifications
    case library
}

