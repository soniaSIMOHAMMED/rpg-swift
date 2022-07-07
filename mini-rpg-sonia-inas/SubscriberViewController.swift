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
         
          let nom = self.nomTextField.text
          let sexe = self.sexeTextField.text
          let taille = self.tailleTextField.text
                    
//         var player = Player(nom: nom, sexe: sexe, taille: taille, niveau: 1, xp: 0, vp: 100)
                }
         
         
     
    



}
