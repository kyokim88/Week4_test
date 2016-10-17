//
//  TabViewController.swift
//  Week4_HW
//
//  Created by Kim, YoungKyo (CONT) on 10/11/16.
//  Copyright © 2016 Kyo Kim. All rights reserved.
//

import UIKit

class TabViewController: UIViewController {

   
  
    
    @IBOutlet weak var contentView: UIView!
    @IBOutlet var buttons: [UIButton]!
    
    var homeViewController: UIViewController!
    var searchViewController: UIViewController!
    var composeViewController: UIViewController!
    var accountViewController: UIViewController!
    var trendingViewController: UIViewController!
    var viewControllers: [UIViewController]!
    
    var selectedIndex: Int = 0
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
        
        let storyboard = UIStoryboard(name:"Main", bundle:nil)
        
        homeViewController = storyboard.instantiateViewController(withIdentifier: "HomeViewController")
        
        searchViewController = storyboard.instantiateViewController(withIdentifier: "SearchViewController")
        
        composeViewController = storyboard.instantiateViewController(withIdentifier: "ComposeViewController")
        
        accountViewController = storyboard.instantiateViewController(withIdentifier: "AccountViewController")
        
        trendingViewController = storyboard.instantiateViewController(withIdentifier: "TrendingViewController")
        
        viewControllers = [homeViewController, searchViewController, accountViewController, trendingViewController]
        
        
        
        buttons[selectedIndex].isSelected = true
        didPressTab(buttons[selectedIndex])
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func didPressTab(_ sender: UIButton) {
        
        let previousIndex = selectedIndex

        selectedIndex = sender.tag
        buttons[previousIndex].isSelected = false
    
        let previousVC = viewControllers[previousIndex]
        
        previousVC.willMove(toParentViewController: nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
         sender.isSelected = true
        
         let vc = viewControllers[selectedIndex]
        

        
         vc.view.frame = contentView.bounds
         contentView.addSubview(vc.view)
        

        
    }
//
//    override func viewWillAppear(_ animated: Bool) {
//        super.viewWillAppear(animated)
//        
//        addChildViewController(vc)
//        
//    }
//    
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated)
//        
//        vc.didMove(toParentViewController: self)
//        
//    }
   
}
