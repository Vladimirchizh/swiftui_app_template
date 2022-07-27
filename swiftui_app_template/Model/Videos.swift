//
//  Videos.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 16.07.2022.
//

import SwiftUI

struct Video: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
    let description: String
    let viewCount: Int
    let uploadDate: String
    let url: URL
}

struct VideoList {
    
    static let topTen = [
        Video(imageName: "hqdefault",
              title: "30 часто используемых прилагательных в английском",
              description: " От Intermediate до Advanced со скидкой 20 $ по промокоду ADJECTIVES — https://bit.ly/3Ogmxog",
              viewCount: 89913,
              uploadDate: "18 июл. 2022 г",
              url: URL(string: "https://youtu.be/0Nyat1i_kgE")!),
        
        Video(imageName: "hqdefault-2",
              title: "50 ответов на популярные вопросы на английском",
              description: "От Intermediate до Advanced со скидкой 20 $ по промокоду 50ANSWERS (вводить на странице оплаты) — https://bit.ly/3uMsYZy",
              viewCount: 13166,
              uploadDate: "14 июл. 2022 г",
              url: URL(string: "https://youtu.be/1-gbDc4Wc1s")!),
        
        Video(imageName: "hqdefault-3",
              title: "7 типичных ошибок во временах английского",
              description: "От Intermediate до Advanced PRO (скидка 20 $ по промокоду VERBTENSE, вводить на странице оплаты) — https://bit.ly/3RptQNu",
              viewCount: 6432,
              uploadDate: "11 июл. 2022 г",
              url: URL(string: "https://youtu.be/0byZaYgSx-c")!),
        Video(imageName: "hqdefault-4",
              title: "От INTERMEDIATE до СВОБОДНОГО английского самостоятельно",
              description: "От Intermediate до Advanced со скидкой 20 $ по промокоду CHANGE — https://bit.ly/3AEPA1A",
              viewCount: 23342,
              uploadDate: "7 июл. 2022 г",
              url: URL(string: "https://youtu.be/DBWu6TnhLeY")!),
        Video(imageName: "hqdefault-5",
              title: "Как обмануть свой мозг и быстро выучить английский?",
              description: "Английский как стиль жизни от Марины Могилко — https://bit.ly/3ulMcVq",
              viewCount: 11169,
              uploadDate: "4 июл. 2022 г",
              url: URL(string: "https://youtu.be/0jHm3j79qEg")!)
    ]
}
