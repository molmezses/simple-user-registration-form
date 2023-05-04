//
//  ViewController.swift
//  alertProject
//
//  Created by mustafa ölmezses on 4.05.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userNameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var passwordAgainText: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    

    @IBAction func signupClicked(_ sender: Any) {
        /*
         
         let alert =   UIAlertController(title: "ERROR", message: "Username not found", preferredStyle: UIAlertController.Style.alert)
         
         let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
         alert.addAction(okButton)
         self.present(alert, animated: true , completion: nil)
         */
        
        
        
        /*
        if userNameText.text == ""{
            let alert = UIAlertController(title: "Error", message: "User name Not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }else if passwordText.text == ""{
            let alert = UIAlertController(title: "Error", message: "Password Not found", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }else if passwordText.text != passwordAgainText.text{
            let alert = UIAlertController(title: "Error", message: "Passwords do not match", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }else {
            let alert = UIAlertController(title: "Success", message: "User signed", preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
        }
        */
        
        
        
        func makeAlert(titleText : String , messageText : String){
            
            let alert = UIAlertController(title: titleText, message: messageText, preferredStyle: UIAlertController.Style.alert)
            let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
            alert.addAction(okButton)
            self.present(alert, animated: true)
            
        }
        
        
        if userNameText.text == ""{
            makeAlert(titleText: "Error", messageText: "User name not found")
        }else if passwordText.text == ""{
            makeAlert(titleText: "Error", messageText: "Password not found")
        }else if passwordText.text != passwordAgainText.text{
            makeAlert(titleText: "Error", messageText: "Passwords do  not match")
        }else {
            makeAlert(titleText: "Success", messageText: "User Signed!")
        }
        
  
        
        
    }
    
    
}

