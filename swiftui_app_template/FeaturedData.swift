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
}


