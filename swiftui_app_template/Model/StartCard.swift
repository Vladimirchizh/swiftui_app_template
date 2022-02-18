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
}

var startCards = [
    StartCard(header: "Learn \nEnglish \nwith H&S", preheader: "Учите английский вместе с нами теперь еще и с помощью приложени HOP&SCOTCH app.", toptext: "your personal learning companion"),
    StartCard(header: "Your \nhomework - \njust in time", preheader: "Доступ к расписанию, домашним заданиям и интерактивным карточкам всегда вместе с вами.", toptext: "study on the go")
]


