//
//  PopUpVC.swift
//  AlertViewDemo
//
//  Created by Ali Bajwa on 22/01/2018.
//  Copyright © 2018 SSASoft. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitBtnPressed(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
    }
    
}
