//
//  ViewController.swift
//  Alerts
//
//  Created by Kadir Akyol on 18.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    @IBOutlet weak var usernameText: UITextField!
    
    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    @IBAction func signUpRealButton(_ sender: Any) {
       
    }
    

    @IBAction func signUpButton(_ sender: Any) {
        
        /*
        
        let alert = UIAlertController(title: "Error !", message: "UserName Not Found", preferredStyle: UIAlertController.Style.alert)
        
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.destructive) { UIAlertAction in
            
            print("button clicked")
            }
        alert.addAction(okButton)
        self.present(alert, animated: true,  completion: nil)
         
         */
        
        if usernameText.text == "" {
            
            let alert = UIAlertController(title: "Error!", message: "Username Not Found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK"  , style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else if passwordText.text == "" {
            
            let alert = UIAlertController(title: "Error!", message: "Password Not Found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK"  , style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else if passwordText.text != passwordAgainText.text {
            
            let alert = UIAlertController(title: "Error!", message: "Password Don't Match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK"  , style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        } else {
            let alert = UIAlertController(title: "Success!", message: "Signed Up!", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK"  , style: UIAlertAction.Style.cancel, handler: nil)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
    }
    
}
