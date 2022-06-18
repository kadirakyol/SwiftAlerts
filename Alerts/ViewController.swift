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

    @IBAction func signUpButton(_ sender: Any) {
        
        let alert = UIAlertController(title: "Error !", message: "UserName Not Found", preferredStyle: UIAlertController.Style.alert)
        
        self.present(alert, animated: true,  completion: nil)
        
    }
    
}
