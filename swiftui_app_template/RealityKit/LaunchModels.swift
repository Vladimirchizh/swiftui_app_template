//
//  HomeView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 11.05.2022.
//
    
import RealityKit
import UIKit

/// Row of launch text
/// X X X X X X
struct LaunchTextRow {
    var text = [LaunchText]()
}

struct LaunchText {
    var character: String
    var isPartOfFind = false /// if true, make blue
    
    /// height, change this later
    var yOffset = Float(0)
    
    var additionalXOffset = Float(0)
    var additionalZOffset = Float(0)
    
    var color: UIColor {
        if isPartOfFind {
            return LaunchConstants.backgroundColor
        } else {
            return UIColor.clear
        }
    }
}
 
struct LaunchTile {
    var text: LaunchText
    var entity: ModelEntity
    var location: Location /// populate from index inside `LaunchTextRow`
    var initialTransform: Transform
    var midTransform: Transform
    var finalTransform: Transform? /// only for Find tiles

    struct Location: Equatable {
        var x: Int
        var z: Int
    }
}
