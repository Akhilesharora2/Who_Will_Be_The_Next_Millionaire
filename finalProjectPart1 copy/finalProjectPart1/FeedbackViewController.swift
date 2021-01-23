//
//  FeedbackViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-24.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class FeedbackViewController: UIViewController {

    @IBOutlet weak var usernameTxtfield: UITextField!
    @IBOutlet weak var commentsTxtView: UITextView!
    @IBOutlet weak var submitComment: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func submitButton(_ sender: UIButton) {
        commentsTxtView.text = "Feedback successfully submitted"
    }
    
    @IBAction func BackButton(_ sender: UIButton) {
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
