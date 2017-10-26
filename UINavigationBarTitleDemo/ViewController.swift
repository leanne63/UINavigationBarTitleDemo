//
//  ViewController.swift
//  UINavigationBarTitleDemo
//
//  Created by leanne on 10/23/17.
//  Copyright © 2017 A Software Company, LLC. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		let titleButton = UIButton(type: .roundedRect)
		titleButton.setTitle("Hello Button!", for: UIControlState.normal)
		
		let navController = parent as! UINavigationController
		
		/*
		* - All 3 lines below active:
		*	-- button shows in nav bar's top center
		*	-- prefersLargeTitles = true:
		*		nav bar's height is extended with larger title label at lower left
		*	-- prefersLargeTitles = false:
		*		nav bar is normal height; button shows in center, and no title label displays
		*
		* - Remark out title line only:
		*	-- nav bar's height is extended (due to blank label in IB settings)
		*   -- titleView button shows in nav bar's center top
		*
		* - Remark out titleView line only:
		*	-- nav bar's height is extended (showing larger title label at lower left)
		*	-- titleView button doesn't show
		*
		 */
		navController.navigationBar.topItem!.title = "Hello???"
		navController.navigationBar.topItem!.titleView = titleButton
		navController.navigationBar.prefersLargeTitles = true
	}

}

