//
//  ViewController.swift
//  weatherApp
//
//  Created by Abdul Nizam Abdul Rahim on 23/07/2018.
//  Copyright © 2018 Abdul Nizam Abdul Rahim. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    @IBOutlet weak var degree: UILabel!
    @IBOutlet weak var name_city: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name_city.text = "click above ..."
        
        self.degree.text = "0 °C"
        // Do any additional setup after loading the view, typically from a nib.
        
//        insertUser()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func enterCity(_ sender: Any) {
        
        let alert = UIAlertController(title: "Enter City", message: nil, preferredStyle: .alert)
        alert.addTextField { (tf) in tf.placeholder = "City" }
        
        let action = UIAlertAction(title: "Submit", style: .default) { (_) in
            guard let city = alert.textFields?.first?.text
                else { return }
            
            self.callApi(city_name: city)
            
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    func callApi(city_name: String) {
        
        let url = "https://api.openweathermap.org/data/2.5/weather?q="+city_name+"&appid=ce496a1edaf9f933742ece6ea52aad64&units=metric"
        
        Alamofire.request(url).responseJSON{ response in
            
            if let final_data = response.result.value {
                let main:Dictionary = final_data as! Dictionary<String, Any>
                let wind:Dictionary = main["main"] as! Dictionary<String, Any>
                
//                let deg:Float = wind["temp"] as! Float
                let deg = (wind["temp"] as? NSNumber)?.floatValue ?? 0
                
                let icon = " °C"
                self.degree.text = "\(deg)" + icon
                self.name_city.text = city_name
                
            }
            
            
        }
        
    }


}

