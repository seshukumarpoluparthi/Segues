//
//  FirstScreen.swift
//  Segues
//
//  Created by apple on 9/23/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class FirstScreen: UIViewController,UITextFieldDelegate {
    @IBOutlet weak var txt_toPass: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        txt_toPass.delegate = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        self.navigationItem.title = "First Screen"
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        self.navigationItem.title = nil
        if segue.identifier == "mySegue"{
            let s = segue.destination as! SecondScreen
            s.pass = self.txt_toPass.text
        }
    }
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        txt_toPass.resignFirstResponder()
        self.view.endEditing(true)
    }
}
