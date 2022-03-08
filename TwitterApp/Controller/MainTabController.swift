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
    view.backgroundColor = .systemBlue
    tabBar.tintColor = .gray
    tabBar.backgroundColor = .systemBackground
    setupVCs()
  }
  
  // MARK: Helpers
  
  func setupVCs() {
    let feed = FeedViewController()
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
    let nav = UINavigationController(rootViewController: vc)
    nav.tabBarItem.title = title
    nav.tabBarItem.image = image
    nav.tabBarItem.selectedImage = selectedImage
    vc.navigationItem.title = title
    return nav
  }


}

