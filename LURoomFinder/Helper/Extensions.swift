//
//  Extensions.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import Foundation
import CoreGraphics

extension CGPoint {
	func clamped(x: ClosedRange<CGFloat>, y: ClosedRange<CGFloat>) -> CGPoint {
		let x = Math.clamp(self.x, within: x)
		let y = Math.clamp(self.y, within: y)
		return CGPoint(x: x, y: y)
	}
	mutating func clamp(x: ClosedRange<CGFloat>, y: ClosedRange<CGFloat>) {
		self.x = Math.clamp(self.x, within: x)
		self.y = Math.clamp(self.y, within: y)
	}
}

extension CGRect {
	func settingOrigin(to o: CGPoint) -> CGRect {
		return CGRect(origin: o, size: self.size)
	}
}
