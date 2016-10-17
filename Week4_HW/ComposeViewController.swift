//
//  ComposeViewController.swift
//  Week4_HW
//
//  Created by Kim, YoungKyo (CONT) on 10/10/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class ComposeViewController: UIViewController {

    @IBOutlet weak var videoIcon: UIImageView!
    @IBOutlet weak var backgroundImage: UIView!
    @IBOutlet weak var textIcon: UIImageView!
    @IBOutlet weak var photoIcon: UIImageView!
    @IBOutlet weak var chatIcon: UIImageView!
    @IBOutlet weak var quoteIcon: UIImageView!
    @IBOutlet weak var linkIcon: UIImageView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        textIcon.alpha = 0
        videoIcon.alpha = 0
        photoIcon.alpha = 0
        quoteIcon.alpha = 0
        chatIcon.alpha = 0
        linkIcon.alpha = 0
         


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func didPressButton(_ sender: AnyObject) {
        
        
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.textIcon.frame.origin.y = -100

            }, completion: { (bool) in
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.photoIcon.frame.origin.y = -100
            
            }, completion: { (bool) in
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.quoteIcon.frame.origin.y = -100
            
            }, completion: { (bool) in
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.videoIcon.frame.origin.y = -100
            
            }, completion: { (bool) in
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.chatIcon.frame.origin.y = -100
            
            }, completion: { (bool) in
        })
        
        UIView.animate(withDuration: 0.5, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.linkIcon.frame.origin.y = -100
            
            }, completion: { (bool) in
                
            self.dismiss(animated: true, completion: nil)
                
        })
        
        

    }
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        textIcon.frame.origin.y = 600
        videoIcon.frame.origin.y = 700
        photoIcon.frame.origin.y = 600
        quoteIcon.frame.origin.y = 600
        chatIcon.frame.origin.y = 700
        linkIcon.frame.origin.y = 700
    }

    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        //animate the text circle
        UIView.animate(withDuration: 0.4, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.textIcon.frame.origin.y = 150
            self.textIcon.alpha = 1
            
        }) { (Bool) in
            
        }
        
        
        
        //animate the photo circle
        
        
        UIView.animate(withDuration: 0.4, delay: 0.1, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.photoIcon.frame.origin.y = 150
            self.photoIcon.alpha = 1
            
            
        }) { (Bool) in
            
        }
        
        
        //animate the video circle
        
        
        UIView.animate(withDuration: 0.4, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.videoIcon.frame.origin.y = 286
            self.videoIcon.alpha = 1
            
        }) { (Bool) in
            
        }
        
        
        
        //animate the chat circle
        
        
        UIView.animate(withDuration: 0.4, delay: 0.3, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.chatIcon.frame.origin.y = 286
            self.chatIcon.alpha = 1
            
        }) { (Bool) in
            
        }
        
        
        //animate the quote circle
        
        
        UIView.animate(withDuration: 0.4, delay: 0.2, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.quoteIcon.frame.origin.y = 150
            self.quoteIcon.alpha = 1
            
        }) { (Bool) in
            
        }
        
        
        //animate the link circle
        
        
        UIView.animate(withDuration: 0.4, delay: 0.4, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
            self.linkIcon.frame.origin.y = 286
            self.linkIcon.alpha = 1
            
        }) { (Bool) in
            
        }
        
       
        
      
        
   

   
    }
    
    
    
    
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


