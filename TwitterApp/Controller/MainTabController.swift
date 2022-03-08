//
//  ViewController.swift
//  TwitterApp
//
//  Created by Giovanna Moeller on 07/03/22.
//

import UIKit

class MainTabController: UITabBarController {
  
  // MARK: Properties
  
  // MARK: Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    tabBar.tintColor = .systemCyan
    tabBar.unselectedItemTintColor = .systemCyan
    tabBar.backgroundColor = .systemBackground.withAlphaComponent(0.8)
    setupVCs()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    
    tabBar.frame.size.height = 92
    print(view.frame.height)
    tabBar.frame.origin.y = view.frame.height - 92
  }
  
  // MARK: Helpers
  
  func setupVCs() {
    let feed = FeedViewController()
    //feed.tabBarItem.image = ...
    let explore = ExploreViewController()
    let notifications = NotificationsViewController()
    let conversations = ConversationsViewController()
    
    viewControllers = [
      createNavController(for: feed, title: "Feed", image: UIImage(systemName: "house"), selectedImage: UIImage(systemName: "house.fill")),
      createNavController(for: explore, title: "Explore", image: UIImage(systemName: "magnifyingglass.circle"), selectedImage: UIImage(systemName: "magnifyingglass.circle.fill")),
      createNavController(for: notifications, title: "Notifications", image: UIImage(systemName: "bell"), selectedImage: UIImage(systemName: "bell.fill")),
      createNavController(for: conversations, title: "Conversations", image: UIImage(systemName: "paperplane"), selectedImage: UIImage(systemName: "paperplane.fill"))]
  }
  
  func createNavController(for vc: UIViewController, title: String, image: UIImage?, selectedImage: UIImage?) -> UIViewController {
    // We need to embed all VCs in a Navigation Controller because inside of each VC we have navigation (such as click in a tweet and go to profile page)
    let nav = UINavigationController(rootViewController: vc)
    //nav.tabBarItem.title = title
    nav.tabBarItem.image = image
    nav.tabBarItem.selectedImage = selectedImage
    vc.navigationItem.title = title
    return nav
  }


}

