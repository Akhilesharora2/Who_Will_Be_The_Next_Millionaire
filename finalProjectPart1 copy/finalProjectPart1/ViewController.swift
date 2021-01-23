//
//  ViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-21.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func StartButton(_ sender: Any) {
        performSegue(withIdentifier: "StartSegue", sender: self)
    }
    
    
    
}

