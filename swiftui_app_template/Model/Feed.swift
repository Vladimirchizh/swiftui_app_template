//
//  Feed.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 23.08.2022.
//

import SwiftUI



struct FeedItem: Identifiable{

    var id = UUID()
    var picture: String
    var headline: String
    var subhead: String
}
