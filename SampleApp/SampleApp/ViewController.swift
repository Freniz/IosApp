//
//  ViewController.swift
//  SampleApp
//
//  Created by Abdul Nizam Abdul Rahim on 04/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var alertButton: UIBarButtonItem!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.menuFunction()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func menuFunction()
    {
        menuButton.target = revealViewController()
        menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
        
        revealViewController().rearViewRevealWidth = 275
        revealViewController().rightViewRevealWidth = 160
        
        alertButton.target = revealViewController()
        alertButton.action = #selector(SWRevealViewController.rightRevealToggle(_:))
        
        view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        UIView.animate(withDuration: 4.0, delay: 2.0, options: UIViewAnimationOptions.curveEaseIn, animations:  {
            self.view.layoutIfNeeded()
        }, completion: nil)
        
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
