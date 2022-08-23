//
//  FeaturedData.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 30.01.2022.
//

import SwiftUI

struct Course: Identifiable{
    let id = UUID()
    var title: String
    var subtitle: String
    var text: String
    var image: String
    var logo: String
}


var courses = [
    Course(title: "Календарь занятий", subtitle: "Пройдено 4/10 занятий", text: "Следующее занятие 20.02", image: "Group 60", logo: "calendar"),

    Course(title: "Домашнее задание", subtitle: "Просмотренно", text: "Задания от вашего преподавателя на следующее занятие", image: "Group 76", logo: "house"),
    Course(title: "Карточки", subtitle: "Изучайте язык по карточкам", text: "Новые слова пригодятся на следующем уроке", image: "Group 34", logo: "greetingcard"),
    ]
