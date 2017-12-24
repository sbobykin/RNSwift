//
//  SwiftView.swift
//  RNSwift
//
//  Created by Apel Yl on 21/12/2017.
//  Copyright © 2017 Facebook. All rights reserved.
//

import UIKit

class SwiftView: UIView {
  let label = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 50))
  let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as! ChildViewController
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    //label.text = "This is initial text on the swift side"
    //addSubview(label)
    
    if let rootVC = UIApplication.shared.delegate?.window??.rootViewController {
      rootVC.addChildViewController(childVC)
      addSubview(childVC.view)
      autoresizesSubviews = false
      childVC.didMove(toParentViewController: rootVC)
    }
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Init coder isn't supported")
  }
  
  var text: String {
    get {
      return childVC.swiftSideLabel.text ?? ""
    }
    
    set(text) {
      print("setting of text", text)
      childVC.swiftSideLabel.text = text
    }
  }

}
