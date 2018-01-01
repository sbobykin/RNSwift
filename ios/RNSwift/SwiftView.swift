//
//  SwiftView.swift
//  RNSwift
//

import UIKit

class SwiftView: SwiftViewObjC {
  let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as! ChildViewController
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    if let rootVC = UIApplication.shared.delegate?.window??.rootViewController {
      rootVC.addChildViewController(childVC)
      childVC.swiftView = self
      addSubview(childVC.view)
      childVC.didMove(toParentViewController: rootVC)
    }
    
  }
  
  override func layoutSubviews() {
    super.layoutSubviews()
    
    childVC.view.frame = bounds
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
