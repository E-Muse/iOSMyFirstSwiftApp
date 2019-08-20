//
//  ViewController.swift
//  SwiftClassPractice
//
//  Created by Emmanuel Muse on 3/27/19.
//  Copyright © 2019 Emmanuel Muse. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var lblOutput: UILabel!
    
    @IBAction func showOutput(_ sender: Any) {
        let name = txtName.text
        let output = "Hello " + name!
        lblOutput.text = output
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self,
                                                                 action: #selector(self.dismissKeyboard))
        
        view.addGestureRecognizer(tap)
    }

    func dismissKeyboard() {
        view.endEditing(true)
    }

}

