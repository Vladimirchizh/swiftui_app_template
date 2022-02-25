//
//  Homework.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 25.02.2022.
//

import SwiftUI


struct Homework: Identifiable{

    var id = UUID()
    var task: String
    var date: String
    var teacher: String
    var group: String
}

