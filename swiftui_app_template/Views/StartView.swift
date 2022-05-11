//
//  HomeView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 11.05.2022.
//

import SwiftUI

struct StartView: View {
    @StateObject var model = LaunchViewModel()
    var body: some View {
        VStack {
            VStack(alignment: .leading) {
                Text("HOP&SCOTCH")
                    .font(.system(size: 42, weight: .bold, design: .rounded))

                Text("Учите английский вместе с нами теперь еще и с помощью приложени")
                    .font(.system(size: 28, weight: .bold, design: .rounded))
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)

            Spacer()

            Group {
                Text("Доступ к расписанию, домашним заданиям и интерактивным карточкам всегда вместе с вами")
            }
            .font(.system(size: 24, weight: .semibold))
            .accentColor(.white.opacity(0.75))
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(24)
        }
        .foregroundColor(.white)
        .background(
            ZStack {
                Color(LaunchConstants.backgroundColor)

                LaunchViewControllerRepresentable(model: model)
            }
            .edgesIgnoringSafeArea(.all)
        )
    }
}
