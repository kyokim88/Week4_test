//
//  SearchViewController.swift
//  Week4_HW
//
//  Created by Kim, YoungKyo (CONT) on 10/10/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    
    
//    @IBOutlet weak var loading_1: UIImageView!
//    @IBOutlet weak var loading_2: UIImageView!
//    @IBOutlet weak var loading_3: UIImageView!
    
    @IBOutlet weak var searchFeed: UIImageView!
    @IBOutlet weak var imageView: UIImageView!

    
   
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    
    var images: [UIImage]!
    var animatedImage: UIImage!
    
 
    
    /////////////////////////////////////////
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        
        images = [loading_1, loading_2, loading_3]
       
         imageView.image = animatedImage
        
        
         animatedImage = UIImage.animatedImage(with: images, duration: 0.3)
        
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.searchFeed.alpha = 0
       
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidAppear(animated)
        
        //animate the text circle
        UIView.animate(withDuration: 0.5, delay: 1, usingSpringWithDamping: 0.8, initialSpringVelocity: 20, options: [], animations: {
            
           self.searchFeed.alpha = 1
            
            
            }, completion: { (bool) in
                
                
        })
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    

}
}
