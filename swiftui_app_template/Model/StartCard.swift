//
//  StartCard.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 18.02.2022.
//

import SwiftUI


struct StartCard: Identifiable{
    var id = UUID()
    var header: String
    var preheader: String
    var toptext: String
    var gifimage: String
}

var startCards = [
    StartCard(
        header: "Learn English with Cards",
        preheader: "Учите английский вместе с нами теперь еще и с помощью интерактивных карточек.",
        toptext: "study on the go",
        gifimage: "cards"
    ),
    StartCard(
        header: "Save your favorite words",
        preheader: "Доступ к календарю занятий и домашним заданиям.",
        toptext: "your personal learning companion",
        gifimage: "fav"
    )
]


