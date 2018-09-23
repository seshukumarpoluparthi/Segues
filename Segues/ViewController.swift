//
//  ViewController.swift
//  Segues
//
//  Created by apple on 9/23/18.
//  Copyright © 2018 apple. All rights reserved.
//

//  https://makeapppie.com/2016/06/27/using-segues-and-delegates-for-navigation-controllers-in-swift-3-0/

import UIKit

class ViewController: UIViewController,SecondVCDelegate {
    func didSelectColor(controller: SecondViewController, text: String) {
        lbl_Color.text = "The Color is " + text
        switch text {
        case "Red":
            lbl_Color.textColor = UIColor.red
        case "Blue":
            lbl_Color.textColor = UIColor.blue
        case "Green":
            lbl_Color.textColor = UIColor.green
        default:
            lbl_Color.textColor = UIColor.black
        }
        controller.navigationController?.popViewController(animated: true)
    }
    @IBOutlet weak var lbl_Color: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue"{
            let vc = segue.destination as! SecondViewController
            vc.colorString = lbl_Color.text!
            vc.delegate = self
        }
        
    }
}

