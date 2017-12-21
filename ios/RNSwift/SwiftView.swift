//
//  SwiftView.swift
//  RNSwift
//
//  Created by Apel Yl on 21/12/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit

class SwiftView: UIView {
  let label = UILabel(frame: CGRect(x: 30, y: 50, width: 300, height: 50))
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    label.text = "This is label inside the SwiftView"
    addSubview(label)
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Init coder isn't supported")
  }

}
