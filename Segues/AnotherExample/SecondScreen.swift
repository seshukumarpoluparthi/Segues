//
//  SecondScreen.swift
//  Segues
//
//  Created by apple on 9/23/18.
//  Copyright © 2018 apple. All rights reserved.
//

import UIKit

class SecondScreen: UIViewController {
    var pass : String?
    @IBOutlet weak var lbl_txtReceived: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        if let name = pass{
            if name.count > 0{
                lbl_txtReceived.text = name
            }
        }
    }
}
