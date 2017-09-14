//
//  ViewController.swift
//  LURoomFinder
//
//  Created by thislooksfun on 9/10/17.
//  Copyright © 2017 thislooksfun. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

	@IBOutlet var scrollView: UIScrollView!
	
	private var mapView: MapView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
		
		mapView = MapView()
		scrollView.addSubview(mapView)
		scrollView.addConstraint(NSLayoutConstraint(item: mapView, attribute: .top,    relatedBy: .equal, toItem: scrollView, attribute: .top,    multiplier: 1, constant: 0))
		scrollView.addConstraint(NSLayoutConstraint(item: mapView, attribute: .bottom, relatedBy: .equal, toItem: scrollView, attribute: .bottom, multiplier: 1, constant: 0))
		scrollView.addConstraint(NSLayoutConstraint(item: mapView, attribute: .left,   relatedBy: .equal, toItem: scrollView, attribute: .left,   multiplier: 1, constant: 0))
		scrollView.addConstraint(NSLayoutConstraint(item: mapView, attribute: .right,  relatedBy: .equal, toItem: scrollView, attribute: .right,  multiplier: 1, constant: 0))
		
		// Set zoom constraints
		scrollView.minimumZoomScale = 1;
		scrollView.maximumZoomScale = 6.0;
		
		// Disable scroll bars
		scrollView.showsVerticalScrollIndicator = false
		scrollView.showsHorizontalScrollIndicator = false
		
//		scrollView.contentSize =
	}
	
	override func viewDidLayoutSubviews() {
		updateZoom(size: self.view.bounds.size)
		self.scrollView.zoomScale = self.scrollView.minimumZoomScale
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}
	
	override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
		updateZoom(size: size)
	}
	
	// MARK: - UIScrollViewDelegate -
	func viewForZooming(in scrollView: UIScrollView) -> UIView? {
		return mapView
	}
	
	func updateZoom(size: CGSize) {
		scrollView.minimumZoomScale = max(size.width / mapView.bounds.size.width, size.height / mapView.bounds.size.height)
		
		if scrollView.zoomScale < scrollView.minimumZoomScale {
			scrollView.zoomScale = scrollView.minimumZoomScale
		}
	}
}
