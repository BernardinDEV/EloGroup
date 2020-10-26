//
//  RegisterViewController.swift
//  EloGroup
//
//  Created by bernardo frisso on 21/10/20.
//


import UIKit
import Firebase


class RegisterViewController: UIViewController {
    
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    @IBOutlet weak var confirmpasswordLabel: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func RegisterButtonPress(_ sender: UIButton) {
        if passwordLabel.text != confirmpasswordLabel.text || passwordLabel.text!.count < 8 {
            let alert : UIAlertController = UIAlertController(title: "Passoword warning ", message: "Passowrds goin wrong type agin", preferredStyle: .actionSheet)
            self.present(alert, animated: true, completion:nil)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        }else {
            if let email = emailLabel.text, let password = passwordLabel.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    print(e)
                } else {
                    
                    self.performSegue(withIdentifier:Constans.register , sender: self)
                }
            }
            
        }
    }
    
    }
}
