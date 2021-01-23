//
//  AgreementViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-24.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class AgreementViewController: UIViewController {

    @IBOutlet weak var ContinueButtonCopy: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        ContinueButtonCopy.isEnabled = false
        

        // Do any additional setup after loading the view.
    }
    
    @IBAction func ContinueButton(_ sender: UIButton) {
        performSegue(withIdentifier: "InstructionSegue", sender: self)
    }
    
    @IBAction func checkBoxButton(_ sender: UIButton) {
        if 	sender.isSelected{
            sender.isSelected = false
        }
        else{
            sender.isSelected = true
            ContinueButtonCopy.isEnabled = true
            
        }
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
