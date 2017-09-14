//
//  Building.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import UIKit

class Building: UIView {
	
	var map: MapView!
	
//	let pos: CGPoint
//	let path:
	
	override init(frame: CGRect) {
		print("Building.init(frame:)")
		
//		pos = CGPoint(x: 0, y: 0)
		
		super.init(frame: frame)
		
		self.backgroundColor = UIColor.clear
		
		self.setNeedsDisplay()
	}
	
	required init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}
	
	override func draw(_ rect: CGRect) {
		print("Building.draw(_:)")
		
		guard let ctx = UIGraphicsGetCurrentContext() else {
			print("CTX is nil")
			return
		}
		
		let scale: CGFloat = 0.5
		let size = CGSize(width: rect.size.width * scale, height: rect.size.height * scale)
		ctx.addEllipse(in: CGRect(origin: rect.origin, size: size))
		ctx.setFillColor(UIColor.blue.cgColor)
		ctx.fillPath()
	}
}
