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
    TabItem(text: "Искать", icon: "magnifyingglass", tab: .explore, color: .purple),
    TabItem(text: "Карточки", icon: "greetingcard", tab: .cards, color: .mint),
    TabItem(text: "Профиль", icon: "person.crop.circle", tab: .account, color: .blue)

]


enum Tab: String{
    case home
    case explore
    case cards
    case account
}

