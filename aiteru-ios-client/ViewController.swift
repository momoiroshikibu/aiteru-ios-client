//
//  ViewController.swift
//  aiteru-ios-client
//
//  Created by Kosuke Matsuura on 11/22/16.
//  Copyright © 2016 Kosuke Matsuura. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var placeLabel: UILabel!
    @IBOutlet weak var statusLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        placeLabel.text = "Usual Place"
        statusLabel.text = "OPEN"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

