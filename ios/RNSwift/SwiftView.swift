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
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    //label.text = "This is initial text on the swift side"
    //addSubview(label)
    
    let childVCSB = UIStoryboard(name: "ChildVC", bundle: nil)
    if let rootVC = UIApplication.shared.delegate?.window??.rootViewController,
       let childVC = childVCSB.instantiateInitialViewController() {
      
      rootVC.addChildViewController(childVC)
      addSubview(childVC.view)
      childVC.didMove(toParentViewController: rootVC)
    }
    
    
    
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("Init coder isn't supported")
  }
  
  var text: String {
    get {
      return label.text ?? ""
    }
    
    set(text) {
      label.text = text
    }
  }

}
