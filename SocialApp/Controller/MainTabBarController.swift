//
//  MainTabBarController.swift
//  SocialApp
//
//  Created by Lanoon on 2023/08/13.
//

import UIKit

class MainTabBarController : UITabBarController{
    
    
    
    //MARK: - lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .blue
        
        configureViewController()
        
        
    }
    //MARK: - controller connect
    func configureViewController(){
        
        view.backgroundColor = .white
        
        let feed = FeedController()
        let notification = NotificationController()
        let imageSelect = ImageSelectController()
        let search = SearchController()
        let profile = ProfileController()
        
        viewControllers = [feed, notification, imageSelect, search, profile]
        
    }
}
