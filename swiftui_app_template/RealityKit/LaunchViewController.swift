//
//  HomeView.swift
//  swiftui_app_template
//
//  Created by Владимир Чижевский on 11.05.2022.
//

import RealityKit
import SwiftUI

class LaunchViewController: UIViewController {
    var model: LaunchViewModel

    lazy var sceneView: ARView? = ARView()
    var baseEntity: ModelEntity?
    var camera: PerspectiveCamera?

    init(model: LaunchViewModel) {
        self.model = model
        super.init(nibName: nil, bundle: nil)
    }

    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func loadView() {
        /**
         Instantiate the base `view`.
         */
        view = UIView()
        view.backgroundColor = .clear
        setupScene()
    }
}

struct LaunchViewControllerRepresentable: UIViewControllerRepresentable {
    @ObservedObject var model: LaunchViewModel

    func makeUIViewController(context: Context) -> LaunchViewController {
        LaunchViewController(model: model)
    }

    func updateUIViewController(_ uiViewController: LaunchViewController, context: Context) {}
}
