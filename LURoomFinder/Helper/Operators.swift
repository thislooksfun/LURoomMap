//
//  Operators.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import UIKit

func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	let x = lhs.x + rhs.x
	let y = lhs.y + rhs.y
	return CGPoint(x: x, y: y)
}
func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
	let x = lhs.x - rhs.x
	let y = lhs.y - rhs.y
	return CGPoint(x: x, y: y)
}
prefix func - (p: CGPoint) -> CGPoint {
	let x = -p.x
	let y = -p.y
	return CGPoint(x: x, y: y)
}
func += (lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs + rhs
}
func -= (lhs: inout CGPoint, rhs: CGPoint) {
	lhs = lhs - rhs
}
