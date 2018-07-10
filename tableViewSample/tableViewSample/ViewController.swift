//
//  ViewController.swift
//  tableViewSample
//
//  Created by Abdul Nizam Abdul Rahim on 09/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var petDescription: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        titleLabel.text = pets[myindex]
        petDescription.text = petDesc[myindex]
        myImage.image = UIImage(named: pets[myindex] + ".jpg")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

