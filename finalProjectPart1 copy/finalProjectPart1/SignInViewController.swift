//
//  SignInViewController.swift
//  finalProjectPart1
//
//  Created by Inderpreet Singh on 2020-07-23.
//  Copyright © 2020 Inderpreet Singh. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    @IBOutlet weak var PasswordTxtField: UITextField!
    @IBOutlet weak var UsernameTxtField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func BackButton(_ sender: Any) {
        performSegue(withIdentifier: "ExitSignInSegue", sender: self)
    }
    
    @IBAction func SignInButton(_ sender: Any) {
        performSegue(withIdentifier: "AgreementSegue", sender: self)
        
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
