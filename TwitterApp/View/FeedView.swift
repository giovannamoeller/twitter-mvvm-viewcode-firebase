//
//  FeedView.swift
//  TwitterApp
//
//  Created by Giovanna Moeller on 12/03/22.
//

import UIKit

class FeedView: UIView {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    configureUI()
  }
  
  func configureUI() {
    backgroundColor = .red
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
}
