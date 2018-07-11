//
//  MultipleViewViewController.swift
//  multipleView
//
//  Created by Abdul Nizam Abdul Rahim on 10/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit

class MultipleViewViewController: UIViewController {

    @IBOutlet weak var labelItems: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        labelItems.text = itemText
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
