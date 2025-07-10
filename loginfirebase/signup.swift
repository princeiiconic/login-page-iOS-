//
//  signup.swift
//  loginfirebase
//
//  Created by student on 10/07/25.
//

import UIKit
import FirebaseAuth
class signup: UIViewController {

    @IBOutlet weak var emailtextfield: UITextField!
    
    @IBOutlet weak var passwordtextfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

 
    @IBAction func field(_ sender: UIButton) {
        
        if let email = emailtextfield.text ,let password = passwordtextfield.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                
                if let e = error {
                    self.performSegue(withIdentifier: "home", sender: self)
                    //just a trial commit
                }
              
            }
        }
    }
    
}
