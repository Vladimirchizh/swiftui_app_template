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
}



var NewCardsItems = [
    NewCardsItem(color: .teal),
    NewCardsItem(color: .purple),
    NewCardsItem(color: .mint),
    NewCardsItem(color: .blue)

]

