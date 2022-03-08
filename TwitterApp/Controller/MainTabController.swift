//
//  ViewController.swift
//  TwitterApp
//
//  Created by Giovanna Moeller on 07/03/22.
//

import UIKit

class MainTabController: UITabBarController {
  
  // MARK: Properties
  
  private var tabBarHeight: CGFloat = 90
  
  // MARK: Lifecycle

  override func viewDidLoad() {
    super.viewDidLoad()
    tabBar.tintColor = .black.withAlphaComponent(0.8)
    tabBar.unselectedItemTintColor = .black.withAlphaComponent(0.8)
    tabBar.backgroundColor = .systemBackground.withAlphaComponent(0.8)
    setupVCs()
  }
  
  override func viewDidLayoutSubviews() {
    super.viewDidLayoutSubviews()
    changeTabBarHeight(height: tabBarHeight)
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
      createNavController(for: explore, title: "Explore", image: UIImage(systemName: "magnifyingglass"), selectedImage: UIImage(systemName: "magnifyingglass", withConfiguration: UIImage.SymbolConfiguration(weight: .bold))),
      createNavController(for: notifications, title: "Notifications", image: UIImage(systemName: "bell"), selectedImage: UIImage(systemName: "bell.fill")),
      createNavController(for: conversations, title: "Conversations", image: UIImage(systemName: "envelope"), selectedImage: UIImage(systemName: "envelope.fill"))]
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
  
  func changeTabBarHeight(height: CGFloat) {
    tabBar.frame.size.height = height
    tabBar.frame.origin.y = view.frame.height - height
  }


}

