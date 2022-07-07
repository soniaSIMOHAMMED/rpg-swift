//
//  SubscriberViewController.swift
//  mini-rpg-sonia-inas
//
//  Created by Sonia  on 07/07/2022.
//

import UIKit

class SubscriberViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nomTextField: UITextField!
    @IBOutlet weak var sexeTextField: UITextField!
    @IBOutlet weak var tailleTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.title = NSLocalizedString("subscribe.title", comment: "")
        self.nomTextField.delegate = self //replace
        self.sexeTextField.delegate = self
        self.tailleTextField.delegate = self


        // Do any additional setup after loading the view.
    }


    
     @IBAction func handleSubscribe(_ sender: Any) {
         guard let nom = self.nomTextField.text,
                let sexe = self.sexeTextField.text,
                let taille = self.tailleTextField.text else {
             self.displayErrorMessage(title: NSLocalizedString("form.title", comment: ""),  message: NSLocalizedString("form.message.required", comment: ""))
            return
                }
         guard log.count > 4 else {
             self.displayErrorMessage(title: NSLocalizedString("form.title", comment: ""), message: NSLocalizedString("form.login.len", comment: ""))
             return
             
         }
         guard pwd.count > 6 else {
             self.displayErrorMessage(title: NSLocalizedString("form.title", comment: ""), message: NSLocalizedString("form.password.len", comment: ""))
             return
         }
         
     }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == self.loginTextField {
            self.passwordTextField.becomeFirstResponder() // permet de changer textField
        }
        
        if textField == self.passwordTextField {
            self.passwordTextField.resignFirstResponder() // permet de fermer le clavier
        }
        
        return true
    }
     // MARK: - Navigation
    
    func displayErrorMessage(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Fermer", style: .cancel))
        self.present(alert, animated: true){
            Timer.scheduledTimer(withTimeInterval: 1.5, repeats: false){
                _ in alert.dismiss(animated: true)
            }
        }
    }


}
