//
//  SignUpViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-23.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var confirmPasswordTxtField: UITextField!
    @IBOutlet weak var usernameTxtField: UITextField!
    @IBOutlet weak var emiailTxtField: UITextField!
    @IBOutlet weak var passwordTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func BackButton(_ sender: Any) {
        performSegue(withIdentifier: "ExitSignUpSegue", sender: self)
    }
    
    @IBAction func SignUpButton(_ sender: Any) {
        performSegue(withIdentifier: "SignUpSignInSegue", sender: self)
        
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
