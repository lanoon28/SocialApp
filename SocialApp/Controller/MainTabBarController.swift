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
        tabBar.backgroundColor = .white
        
        let feed = tabNavigationController(unselectedImage: #imageLiteral(resourceName: "home_unselected"), seletedImage: #imageLiteral(resourceName: "home_selected"), rootViewController: FeedController())//#imageLiteral()-> 이미지 지정
        let notification = tabNavigationController(unselectedImage: #imageLiteral(resourceName: "like_unselected"), seletedImage: #imageLiteral(resourceName: "love"), rootViewController: NotificationController())
        let imageSelect = tabNavigationController(unselectedImage: #imageLiteral(resourceName: "plus_unselected"), seletedImage: #imageLiteral(resourceName: "add2"), rootViewController: ImageSelectController())
        let search = tabNavigationController(unselectedImage: #imageLiteral(resourceName: "search_unselected"), seletedImage: #imageLiteral(resourceName: "search_selected"), rootViewController: SearchController())
        let profile = tabNavigationController(unselectedImage: #imageLiteral(resourceName: "profile_unselected"), seletedImage: #imageLiteral(resourceName: "profile_selected"), rootViewController: ProfileController())
        
        viewControllers = [feed, notification, imageSelect, search, profile]
        
    }
    
    func tabNavigationController(unselectedImage : UIImage, seletedImage : UIImage, rootViewController : UIViewController) -> UINavigationController{
        
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = seletedImage
        nav.navigationBar.tintColor = .black
        
        return nav
    }
}
