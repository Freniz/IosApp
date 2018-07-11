//
//  ViewController.swift
//  multipleView
//
//  Created by Abdul Nizam Abdul Rahim on 10/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit

var itemText = ""

class ViewController: UIViewController {

    
    @IBOutlet weak var inputFields: UITextField!
    @IBAction func SubmitButton(_ sender: Any) {
        
        if(inputFields.text != "")
        {
            itemText = inputFields.text!
            
            performSegue(withIdentifier: "segue", sender: self)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

