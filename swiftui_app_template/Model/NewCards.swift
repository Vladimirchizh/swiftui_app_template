//
//  File.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 13.07.2022.
//

import SwiftUI

struct NewCardsItem: Identifiable{
    var id = UUID()
    var color: Color
    var text: String
    var translate: String
}



var NewCardsItems = [
    NewCardsItem(color: .teal, text: "serendipity", translate:  "интуиция"),
    NewCardsItem(color: .purple, text: "explore", translate: "изучать"),
    NewCardsItem(color: .mint, text: "interface", translate: "интерфейс"),
    NewCardsItem(color: .blue, text: "library", translate: "библиотека")
]
