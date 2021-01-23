//
//  ScoreViewController.swift
//  finalProjectPart1
//
//  Created by Akhilesh Arora on 2020-07-30.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class ScoreViewController: UIViewController {
    
        var score = "";

    @IBOutlet weak var lblscore: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        lblscore.text = score;
        // Do any additional setup after loading the view.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
