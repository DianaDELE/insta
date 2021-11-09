//
//  MainTabController.swift
//  insta
//
//  Created by Karen De Luna on 03/11/21.
//

import UIKit
class MainTabController: UITabBarController{
    
    //MARK: - lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .white
        configureViewControllers()
    }
    
    
    //MARK: - helpers
    //CREAMOS INSTANCIAS DE NUESTROS BOTONER DE BAR
    func configureViewControllers() {
        //LOS PARENTESIS SON LOS CONTRUCTORES
        view.backgroundColor = .black
        let layout = UICollectionViewFlowLayout()
        let feed = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "home-2"),selectedImage: #imageLiteral(resourceName: "home"), rootViewController: FeedController(collectionViewLayout: layout))
        
        let search = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "search"), selectedImage: #imageLiteral(resourceName: "search-2"), rootViewController: SearchController())
        
        let imageSelector = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "plus-2"), selectedImage: #imageLiteral(resourceName: "plus"), rootViewController: ImageSelectorController())
        
        let notifications = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "heart"), selectedImage: #imageLiteral(resourceName: "heart-2"), rootViewController: NotificationsController())
        
        let profile = templateNavigationController(unselectedImage: #imageLiteral(resourceName: "profile"), selectedImage: #imageLiteral(resourceName: "profile-2"), rootViewController: ProfileController())
        
        viewControllers = [feed, search, imageSelector,notifications,profile]
        tabBar.tintColor = .black
    }
    
    //SE USARAN DOS IMAGENES, UNA CUANDO ESTA SELECCIONADO Y OTRA CUANDO NO
    func templateNavigationController(unselectedImage: UIImage,selectedImage:UIImage, rootViewController: UIViewController) -> UINavigationController{
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }
}
