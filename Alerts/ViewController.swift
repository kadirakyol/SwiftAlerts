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
            MakeAlert(alertTitle: "Error", alertMessage: "Username Cannot Be Empty")
        }
        
        else if passwordText.text == "" {
            MakeAlert(alertTitle: "Error", alertMessage: "Password Cannot Be Empty")
        }
        
        else if passwordText.text != passwordAgainText.text {
            MakeAlert(alertTitle: "Error", alertMessage: "Password Do Not Match")
        }
        
        else {
            MakeAlert(alertTitle: "Success", alertMessage: "You Signed Up Perfectly")
        }
        
        
        
    }
        
    func MakeAlert(alertTitle : String, alertMessage : String){
        
        let alert = UIAlertController(title: alertTitle, message: alertMessage, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert.addAction(okButton)
        self.present(alert, animated: true)
        
    }
    
}
