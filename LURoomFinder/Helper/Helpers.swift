//
//  Helpers.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/11/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import CoreGraphics

struct Math {
	static func clamp(_ f: CGFloat, within range: ClosedRange<CGFloat>) -> CGFloat {
		switch f {
		case -CGFloat.infinity...range.lowerBound: return range.lowerBound
		case  range.upperBound...CGFloat.infinity: return range.upperBound
		default: return f
		}
	}
}
