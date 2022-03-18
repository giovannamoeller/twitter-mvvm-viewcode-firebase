//
//  FeedViewController.swift
//  TwitterApp
//
//  Created by Giovanna Moeller on 08/03/22.
//

import UIKit

class FeedViewController: UIViewController {
  
  // MARK: Properties
  
  // MARK: Lifecycle
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view = FeedView(frame: .zero)
    configureUI()
  }
  
  // MARK: Helpers
  
  func configureUI() {
    navigationItem.titleView = UIImageView(image: UIImage(named: "twitter"))
  }
  
}
