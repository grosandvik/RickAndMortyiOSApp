//
//  ViewController.swift
//  RickAndMorty2
//
//  Created by Gro Sandvik on 15/01/2025.
//

import UIKit

//Default classname = ViewController, default container UIViewController
//Final class means that it can not be sub-classed

/// Controller to house tabs and root tab controllers
final class RMTabBarController: UITabBarController{

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTabs()
        // Do any additional setup after loading the view.
    }
 //private func means that no other class can access it
// All the let chacracterVS aso are called "Base controllers"
    private func setUpTabs() {
        let charactersVC = RMCharactersViewController()
        let locationsVC = RMLocationsViewController()
        let episodesVC = RMEpisodesViewController()
        let settingsVC = RMSettingsViewController()
        
//we need to say that the largetitledisplaymode are  automatic (Titles are on the top)..
        
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        
        /* We first had the title logic in here, but will move them to the RMCharactersViewControllers definitions and add the logic there. The reason for moving this logic in to the definitions is that the tabs will be there by default. (on the bottom)
        charactersVC.title = "Characters"
        locationsVC.title = "Locations"
        episodesVC.title = "Episodes"
        settingsVC.title = "Settings"*/
        
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        
        //We need to create images to the tabBarItems (the tiles) with a title, image, and a tag
        nav1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "figure.climbing"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        //This for loop creates large titles for the navigation bar items in the bottom
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
            
        }
        
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated: true
                           
            )
        }
    }
      
