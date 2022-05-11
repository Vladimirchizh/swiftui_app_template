//
//  HomeView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 11.05.2022.
//
    
import Combine
import SwiftUI

class LaunchViewModel: ObservableObject {
    @Published var showingUI = false
    
    var tiles = [LaunchTile]()
    
    var textRows = [
        LaunchTextRow(
            text: [
                LaunchText(character: "∮"),
                LaunchText(character: "π"),
                LaunchText(character: "⧑"),
                LaunchText(character: "∞"),
                LaunchText(character: "∴"),
                LaunchText(character: "➤")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "♛"),
                LaunchText(character: "♣︎"),
                LaunchText(character: "♦︎"),
                LaunchText(character: "♥︎"),
                LaunchText(character: "♠︎"),
                LaunchText(character: "♜")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "✭"),
                LaunchText(character: "✣"),
                LaunchText(character: "✿"),
                LaunchText(character: "❂"),
                LaunchText(character: "❃"),
                LaunchText(character: "◼︎")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "❖"),
                LaunchText(character: "H", isPartOfFind: true),
                LaunchText(character: "O", isPartOfFind: true),
                LaunchText(character: "P", isPartOfFind: true),
                LaunchText(character: "&", isPartOfFind: true),
                LaunchText(character: "❖")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "S", isPartOfFind: true),
                LaunchText(character: "C", isPartOfFind: true),
                LaunchText(character: "O", isPartOfFind: true),
                LaunchText(character: "T", isPartOfFind: true),
                LaunchText(character: "C", isPartOfFind: true),
                LaunchText(character: "H", isPartOfFind: true)
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "∮"),
                LaunchText(character: "π"),
                LaunchText(character: "⧑"),
                LaunchText(character: "∞"),
                LaunchText(character: "∴"),
                LaunchText(character: "➤")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "♛"),
                LaunchText(character: "♣︎"),
                LaunchText(character: "♦︎"),
                LaunchText(character: "♥︎"),
                LaunchText(character: "♠︎"),
                LaunchText(character: "♜")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "✭"),
                LaunchText(character: "✣"),
                LaunchText(character: "✿"),
                LaunchText(character: "❂"),
                LaunchText(character: "❃"),
                LaunchText(character: "◼︎")
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "𝛴"),
                LaunchText(character: "𝜽"),
                LaunchText(character: "𝛹"),
                LaunchText(character: "𝜔"),
                LaunchText(character: "𝛼"),
                LaunchText(character: "𝛺")
            ]
        )
    ]
    
    var width: Int {
        textRows.first?.text.count ?? 0
    }
    
    var height: Int {
        textRows.count
    }
}
