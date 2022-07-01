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
                LaunchText(character: "L", isPartOfFind: true),
                LaunchText(character: "i", isPartOfFind: true),
                LaunchText(character: "n", isPartOfFind: true),
                LaunchText(character: "g", isPartOfFind: true),
                LaunchText(character: "u", isPartOfFind: true),
                LaunchText(character: "a", isPartOfFind: true)
            ]
        ),
        LaunchTextRow(
            text: [
                LaunchText(character: "✧", isPartOfFind: true),
                LaunchText(character: "T", isPartOfFind: true),
                LaunchText(character: "r", isPartOfFind: true),
                LaunchText(character: "i", isPartOfFind: true),
                LaunchText(character: "p", isPartOfFind: true),
                LaunchText(character: "✧", isPartOfFind: true)
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
