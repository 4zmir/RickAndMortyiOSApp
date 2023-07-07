//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Yeider Juarez on 7/6/23.
//

import UIKit

final class RMTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .red
        setUpTabs()
    }
    //final does: no ther class can access this function
    private func setUpTabs(){
        //assigns name to each view controller
        let charactersVC = RMCharacterViewController()
        let locationsVC = RMLocationViewController()
        let episodesVC = RMEpisodeViewController()
        let settingsVC = RMSettingsViewController()
        //gives each view controller the ability to display its title in large font
        charactersVC.navigationItem.largeTitleDisplayMode = .automatic
        locationsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodesVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        //sets the title for each view controller
        charactersVC.title = "Characters"
        locationsVC.title = "Locations"
        episodesVC.title = "Episodes"
        settingsVC.title = "Settings"
        //
        let nav1 = UINavigationController(rootViewController: charactersVC)
        let nav2 = UINavigationController(rootViewController: locationsVC)
        let nav3 = UINavigationController(rootViewController: episodesVC)
        let nav4 = UINavigationController(rootViewController: settingsVC)
        //sets the name and image to the individual tabs
        nav1.tabBarItem = UITabBarItem(
            title:"Characters",
            image: UIImage(systemName: "person"),
            tag: 1)
        nav2.tabBarItem = UITabBarItem(
            title:"Locations",
            image: UIImage(systemName: "globe"),
            tag: 1)
        nav3.tabBarItem = UITabBarItem(
            title:"Episodes",
            image: UIImage(systemName: "tv"),
            tag: 1)
        nav4.tabBarItem = UITabBarItem(
            title:"Settings",
            image: UIImage(systemName: "gear"),
            tag: 1)
        //sets the large titles ability to true for each nav
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
         
        setViewControllers(
            [nav1, nav2, nav3, nav4],
            animated:true)
    }
}

