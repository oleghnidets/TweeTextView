//
//  ViewController.swift
//  TweeTextView
//
//  Created by Oleg Gnidets on 8/13/19.
//  Copyright © 2019 Oleg Hnidets. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	@IBOutlet weak var textView: TweeActiveTextView!

	override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func resign(_ sender: Any) {
        view.endEditing(true)
    }
}
