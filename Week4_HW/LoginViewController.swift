//
//  LoginViewController.swift
//  Week4_HW
//
//  Created by Kim, YoungKyo (CONT) on 10/13/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var textView: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textView.becomeFirstResponder()

      
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didPressBack(_ sender: UIButton) {
        
        dismiss(animated: true, completion: nil)
        
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
