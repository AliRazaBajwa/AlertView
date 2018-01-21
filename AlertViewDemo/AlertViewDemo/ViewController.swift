//
//  ViewController.swift
//  AlertViewDemo
//
//  Created by Ali Bajwa on 21/01/2018.
//  Copyright © 2018 SSASoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
       
     
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   
    @IBAction func alertResonseReuse(_ sender: Any) {
        
        
        if(alertViewResponse(title: "Alert", message: "This is bla bla message")){
            print("Control your response here is Yes Button pressed")
            performSegue(withIdentifier: "SecondVC", sender: self)
        }
        
    }
    
    @IBAction func alertActionPressed(_ sender: UIButton) {
    
          simpleAlertView(title: "2 + 2 = 4", message: "") // ali bajwa
  }
  
    @IBAction func responseAlertPressed(_ sender: UIButton) {
        
      responseAlertView(title: "Do you like pizza", message: "YES or No")
       
    }
    
    @IBAction func alertViewBtnPressed(_ sender: UIButton) {
        
        alertViewTextField(title: "Enter Your name", message: "")
    }
    
    
    @IBAction func alertViewCustomBtnPressed(_ sender: UIButton) {
        
        let popupVC = storyboard?.instantiateViewController(withIdentifier: "PopUpVC") as! PopUpVC
        self.present(popupVC, animated: true, completion: nil)
    }
    

    // AlerView Functions with parameters 
    func simpleAlertView(title: String , message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addAction(ok)
        
        present(alertController, animated: true, completion: nil)
    }
    //update Please-controller name + yourCustomName
    func responseAlertView(title: String , message: String) {
        
        let alertCotroller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let yes = UIAlertAction(title: "YES", style: .default) { (responseAction) in
            
            self.performSegue(withIdentifier: "SecondVC", sender: self)
        }
        let no = UIAlertAction(title: "NO", style: .default, handler: nil)
        alertCotroller.addAction(yes)
        alertCotroller.addAction(no)
        present(alertCotroller, animated: true, completion: nil)
    }
    //Reusable AlertView with Bool Response
    func alertViewResponse(title: String , message: String) -> Bool{
        
        var isTrue:Bool = true;
        let alertCotroller = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let yes = UIAlertAction(title: "YES", style: .default) { (responseAction) in
            if isTrue {
           isTrue = true
                
            }
        }
        let no = UIAlertAction(title: "NO", style: .default, handler: nil)
        alertCotroller.addAction(yes)
        alertCotroller.addAction(no)
        present(alertCotroller, animated: true, completion: nil)
        return isTrue;
    }
    
    // TextField Alert View
    func alertViewTextField (title: String , message: String) {
        
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let ok = UIAlertAction(title: "OK", style: .default, handler: nil)
        alertController.addTextField { (textfield) in
    
            textfield.placeholder = "Enter your name"
            textfield.textAlignment = .center
            
        }
        alertController.addAction(ok)
        present(alertController, animated: true, completion: nil)
    }
    
    
}

