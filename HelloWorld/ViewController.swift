//
//  ViewController.swift
//  HelloWorld
//
//  Created by Anna Lavrova on 29.01.2024.
//

import UIKit

class ViewController: UIViewController {

    private let turnedOffAlpha = 0.2
    private let turnedOnAlpha = 1.0

    @IBOutlet private weak var redView: UIView!
    @IBOutlet private weak var yellowView: UIView!
    @IBOutlet private weak var greenView: UIView!
    @IBOutlet private weak var startButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        configureButton(view: redView)
        configureButton(view: yellowView)
        configureButton(view: greenView)

        startButton.layer.cornerRadius = 10
        startButton.layer.cornerCurve = .continuous
        startButton.setTitle("Start", for: .normal)
    }

    private func configureButton(view: UIView) {
        view.layer.cornerRadius = view.frame.height / 2
        view.alpha = turnedOffAlpha
    }

    @IBAction private func onStartButtonTapped() {
        if redView.alpha == turnedOnAlpha {
            yellowView.alpha = turnedOnAlpha
            redView.alpha = turnedOffAlpha
        } else if yellowView.alpha == turnedOnAlpha {
            greenView.alpha = turnedOnAlpha
            yellowView.alpha = turnedOffAlpha
        } else if greenView.alpha == turnedOnAlpha {
            redView.alpha = turnedOnAlpha
            greenView.alpha = turnedOffAlpha
        } else {
            redView.alpha = turnedOnAlpha
            startButton.setTitle("NEXT", for: .normal)
        }
    }

}

