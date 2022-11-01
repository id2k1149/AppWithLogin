//
//  EditViewController.swift
//  AppWithLogin
//
//  Created by Max Franz Immelmann on 11/1/22.
//

import UIKit

class EditViewController: UIViewController {

    @IBOutlet var nameTF: UITextField!
    @IBOutlet var surnameTF: UITextField!
    
    var name: String!
    var surname: String!
    
    private let primaryColor = UIColor(
        red: 210/255,
        green: 109/255,
        blue: 128/255,
        alpha: 1
    )
    private let secondaryColor = UIColor(
        red: 107/255,
        green: 148/255,
        blue: 230/255,
        alpha: 1
    )
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // add gradient
        view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
        
        nameTF.text = name
        surnameTF.text = surname
    }
}
