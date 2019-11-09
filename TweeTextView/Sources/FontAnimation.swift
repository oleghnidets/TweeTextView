//  Created by Oleg Hnidets on 12/20/17.
//  Copyright © 2019 Oleg Hnidets. All rights reserved.
//

import Foundation
import QuartzCore
import CoreFoundation

internal final class FontAnimation {
	private var displayLink: CADisplayLink?
	private(set) var startTime: CFTimeInterval?

	private let selector: Selector

	init(target: AnyObject, selector: Selector) {
		self.selector = selector

		displayLink = CADisplayLink(target: target, selector: selector)

//		displayLink?.preferredFramesPerSecond = 30
	}

	func start() {
        displayLink?.add(to: .main, forMode: .common)
		displayLink?.isPaused = false

		startTime = CFAbsoluteTimeGetCurrent()
	}

	func stop() {
		startTime = nil

		displayLink?.isPaused = true
	}
}
