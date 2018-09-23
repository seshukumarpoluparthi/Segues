//
//  SecondViewController.swift
//  Segues
//
//  Created by apple on 9/23/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

protocol SecondVCDelegate {
    func didSelectColor(controller : SecondViewController , text : String)
}
class SecondViewController: UIViewController {
    var delegate : SecondVCDelegate! = nil
    var colorString = "i dont know the color"
    
    @IBOutlet weak var lbl_Color: UILabel!
    @IBAction func btn_SaveColor(_ sender: UIBarButtonItem) {
        /*
        if delegate != nil{
            delegate.didSelectColor(controller: self, text: lbl_Color.text!)
        }
        */
 /*
      delegate?.didSelectColor(controller: self, text: lbl_Color.text!)
        
 */
        guard let delegate = self.delegate else {
            print("delegate secondviewcontroller is not set")
            return
        }
        delegate.didSelectColor(controller: self, text: lbl_Color.text!)
    }
    
    @IBAction func colorSelectionButton(_ sender: UIButton) {
        colorString = (sender.titleLabel?.text)!
        lbl_Color.text = colorString
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        lbl_Color.text = colorString
    }
 }
