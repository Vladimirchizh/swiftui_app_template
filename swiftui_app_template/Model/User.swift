//
// Created by Владимир Чижевский on 23.02.2022.
//

import SwiftUI



struct User: Identifiable{

    var id = UUID()
    var picture: String
    var firstName: String
    var lastName: String
    var phone: String
    var email: String
    var level: String
}
