//
//  MapView.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import UIKit

class MapView: UIView {
	
	private var b: Building!
	
	override init(frame: CGRect) {
		print("MapView.init(frame:)")
		super.init(frame: frame)
		setup()
	}
	
	required init?(coder aDecoder: NSCoder) {
		print("MapView.init(coder:)")
		super.init(coder: aDecoder)
		setup()
	}
	
	private func setup() {
		print("MapView.setup()")
		self.frame.size = CGSize(width: 1000, height: 1000)
		b = Building()
		b.map = self
		self.addSubview(b)
		self.setNeedsDisplay()
	}
	
	override func layoutSubviews() {
		b.frame = self.frame
	}
	
	override func draw(_ rect: CGRect) {
		print("MapView.draw(_:)")
		
		guard let ctx = UIGraphicsGetCurrentContext() else {
			print("CTX is nil")
			return
		}
		
		ctx.setFillColor(UIColor.purple.cgColor)
		ctx.fill(rect)
	}
	
}
