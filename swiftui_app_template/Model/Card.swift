//
//  Card.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 02.02.2022.
//

import SwiftUI


struct Card: Hashable {
    var id: Int
    
    let text: String
    let translate: String
}
var cards = [
    Card(id: 1, text: "Serendipity", translate:  "интуиция"),
    Card(id: 2, text: "Explore", translate: "изучать"),
    Card(id: 3, text: "Interface", translate: "интерфейс"),
    Card(id: 4, text: "Library", translate: "библиотека"),
    Card(id: 5, text: "bamboozle", translate: "одурачивать"),
    Card(id: 6, text: "Splatoon", translate: "взвод"),
    Card(id: 7, text: "wonderful", translate: "чудесно"),
    Card(id: 8, text: "present", translate: "настоящее"),
    Card(id: 7, text: "blanket", translate: "простыня"),
    Card(id: 7, text: "memorise", translate: "запоминать")
]
