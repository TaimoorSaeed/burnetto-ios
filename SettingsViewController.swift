//
//  SettingsViewController.swift
//  Burnetto
//
//  Created by O16Labs on 11/21/19.
//  Copyright © 2019 admin. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    
    @IBOutlet weak var urlTextFeild: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    @IBAction func submitAction(_ sender: Any) {
        
        if urlTextFeild.text != nil && urlTextFeild.text != ""{
            UserDefaults.standard.set("\(urlTextFeild.text!)", forKey: "url")
        }
        
//        self.dismiss(animated: true, completion: nil)
        self.navigationController?.popViewController(animated: true)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
