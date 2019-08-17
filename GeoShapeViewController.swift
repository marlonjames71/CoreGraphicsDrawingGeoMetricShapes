//
//  ViewController.swift
//  CGDrawingGeoMetricShapes
//
//  Created by Marlon Raskin on 8/15/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit

class GeoShapeViewController: UIViewController {

	var linesAreOffScreen: Bool?

	@IBOutlet weak var geoMetricShape: GeoMetricShape!

	@IBOutlet weak var line1: UIView!
	@IBOutlet weak var line2: UIView!
	@IBOutlet weak var line3: UIView!
	@IBOutlet weak var line4: UIView!
	@IBOutlet weak var line5: UIView!
	@IBOutlet weak var line6: UIView!
	@IBOutlet weak var line7: UIView!
	@IBOutlet weak var line8: UIView!
	@IBOutlet weak var line9: UIView!
	@IBOutlet weak var line10: UIView!
	@IBOutlet weak var line11: UIView!
	@IBOutlet weak var button: UIButton!

	lazy var lines = [line1, line2, line3, line4, line5, line6, line7, line8, line9, line10, line11]

	override func viewDidLoad() {
		super.viewDidLoad()
		view.backgroundColor = #colorLiteral(red: 0.594855013, green: 0.7609143948, blue: 0.7830129019, alpha: 1)
		button.layer.borderWidth = 2
		button.layer.borderColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 0.70).cgColor
		button.layer.cornerRadius = button.bounds.height / 2
		button.backgroundColor = UIColor(red: 0.11, green: 0.11, blue: 0.11, alpha: 70)
		button.setTitleColor(.white, for: .normal)
		button.layer.shadowRadius = button.bounds.height / 2
		button.layer.shadowRadius = 12
		button.layer.shadowColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
		button.layer.shadowOpacity = 0.4
		linesAreOffScreen = true
		setupView()
	}


	@IBAction func buttonTapped(_ sender: UIButton) {
		animate()
		animateButton()
	}

	var initialPoint: CGPoint?

	func setupView() {
		[line1, line2, line3,
		 line4, line5, line6,
		 line7, line8, line9,
		 line10, line11].forEach {
			let destination = CGPoint(x: view.frame.midX, y: view.frame.maxY + ($0?.frame.height ?? 0))
			let offset = view.convert(destination, to: $0)
			$0?.transform = CGAffineTransform(translationX: 0, y: offset.y)
		}
	}

	func animateButton() {
		if button.isHighlighted {
			UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: [.allowUserInteraction], animations: {
				self.button.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
			}, completion: nil)
		} else {
			UIView.animate(withDuration: 0.5, delay: 0.0, usingSpringWithDamping: 1.0, initialSpringVelocity: 5.0, options: [.allowUserInteraction], animations: {
				self.button.transform = .identity
			}, completion: nil)
		}
	}

	func animate() {
		if linesAreOffScreen! {
			linesAreOffScreen = false
			for (index, line) in lines.enumerated() {
				UIView.animate(withDuration: 1.0, delay: TimeInterval(0.05 * CGFloat(index)), usingSpringWithDamping: 0.8, initialSpringVelocity: 0.0, options: [.curveEaseOut], animations: {
					line?.transform = .identity
				}, completion: nil)
			}
		} else {
			linesAreOffScreen = true
			let reversed = lines.reversed()
//			let offset = view.convert(destination, to: $0)
			for (index, line) in reversed.enumerated() {
				UIView.animate(withDuration: 1.0, delay: TimeInterval(0.05 * CGFloat(index)), usingSpringWithDamping: 0.8, initialSpringVelocity: 0.0, options: [.curveEaseOut], animations: {
					line?.transform = CGAffineTransform(translationX: 0, y: self.view.frame.maxY + (line?.frame.height ?? 0))
				}, completion: nil)
			}
		}
	}
}

