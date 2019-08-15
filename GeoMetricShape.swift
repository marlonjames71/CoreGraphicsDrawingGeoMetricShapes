//
//  GeoMetricShape.swift
//  CGDrawingGeoMetricShapes
//
//  Created by Marlon Raskin on 8/15/19.
//  Copyright © 2019 Marlon Raskin. All rights reserved.
//

import UIKit


@IBDesignable
class GeoMetricShape: UIView {

	let triangleColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.60)

	override init(frame: CGRect) {
		super.init(frame: frame)
		backgroundColor = UIColor.clear
	}

	required init?(coder aDecoder: NSCoder) {
		super.init(coder: aDecoder)
		backgroundColor = UIColor.clear
	}


	override func draw(_ rect: CGRect) {

		if let context = UIGraphicsGetCurrentContext() {

			// First triangle
			context.beginPath()
			context.move(to: CGPoint(x: 0.0, y: 151.0))
			context.addLine(to: CGPoint(x: 78.0, y: 0.0))
			context.addLine(to: CGPoint(x: 151.0, y: 151.0))
			context.setFillColor(triangleColor.cgColor)
			context.fillPath()

			// Second Triangle
			context.beginPath()
			context.move(to: CGPoint(x: 0.0, y: 151.0))
			context.addLine(to: CGPoint(x: 112.0, y: 29))
			context.addLine(to: CGPoint(x: 196.0, y: 151.0))
			context.setFillColor(triangleColor.cgColor)
			context.fillPath()

			// Third Triangle
			context.beginPath()
			context.move(to: CGPoint(x: 0.0, y: 151.0))
			context.addLine(to: CGPoint(x: 152.0, y: 58))
			context.addLine(to: CGPoint(x: 246.0, y: 151.0))
			context.setFillColor(triangleColor.cgColor)
			context.fillPath()

			// Fourth Triangle
			context.beginPath()
			context.move(to: CGPoint(x: 0.0, y: 151.0))
			context.addLine(to: CGPoint(x: 193.0, y: 80))
			context.addLine(to: CGPoint(x: 289.0, y: 151.0))
			context.setFillColor(triangleColor.cgColor)
			context.fillPath()

			// Fifth Triangle
			context.beginPath()
			context.move(to: CGPoint(x: 0.0, y: 151.0))
			context.addLine(to: CGPoint(x: 242.0, y: 102))
			context.addLine(to: CGPoint(x: 330.0, y: 151.0))
			context.setFillColor(triangleColor.cgColor)
			context.fillPath()
		}
	}
}
