//
//  Tab.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 01.02.2022.
//

import SwiftUI
import RiveRuntime

let icon = RiveViewModel(fileName: "menu_buttons", stateMachineName: "CHAT_Interactivity", artboardName: "CHAT"
)

struct TabItem: Identifiable{
    
    var id = UUID()
    var text: String
    var icon: RiveViewModel
    var tab: Tab
    var color: Color
}


var tabItems = [
    TabItem(text: "Главная", icon: RiveViewModel(fileName: "menu_buttons", stateMachineName: "HOME_interactivity", artboardName: "HOME"
                                               ), tab: .home, color: .teal),
    TabItem(text: "Занятия", icon: RiveViewModel(fileName: "menu_buttons", stateMachineName: "TIMER_Interactivity", artboardName: "TIMER"
                                                ), tab: .calendar, color: .purple),
    TabItem(text: "Карточки", icon: RiveViewModel(fileName: "menu_buttons", stateMachineName: "STAR_Interactivity", artboardName: "LIKE/STAR"
                                                       ), tab: .cards, color: .mint),
    TabItem(text: "Профиль", icon: RiveViewModel(fileName: "menu_buttons", stateMachineName: "USER_Interactivity", artboardName: "USER"), tab: .account, color: .blue)

]


enum Tab: String{
    case home
    case calendar
    case cards
    case account
}

