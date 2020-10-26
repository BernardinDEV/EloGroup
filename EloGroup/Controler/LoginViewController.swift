//
//  LoginViewController.swift
//  EloGroup
//
//  Created by bernardo frisso on 21/10/20.
//


import UIKit
import Firebase
import FirebaseAuth


class LoginViewController: UIViewController{
    @IBOutlet weak var emailLabel: UITextField!
    @IBOutlet weak var passwordLabel: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    @IBAction func LoginButtonPress(_ sender: UIButton) {
        if let email = emailLabel.text, let password = passwordLabel.text {
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let e = error {
                    let alert : UIAlertController = UIAlertController(title: "Something is going wrong", message: "Type agin", preferredStyle: .actionSheet)
                    print(e)
                    self.present(alert, animated: true, completion:nil)
                    alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
                } else {
                    //Navigate to the ChatViewController
                    self.performSegue(withIdentifier: Constans.Login , sender: self)
                }
            }
        }
    }
    
}


