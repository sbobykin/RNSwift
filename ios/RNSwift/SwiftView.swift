//
//  SwiftView.swift
//  RNSwift
//

import UIKit

/*@objc protocol SwiftViewDelegate {
  func swiftButtonTapped()
}*/

class SwiftView: SwiftViewObjC {
  let childVC = UIStoryboard(name: "ChildVC", bundle: nil).instantiateInitialViewController() as! ChildViewController
  
  //var delegate: SwiftViewDelegate?
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    if let rootVC = UIApplication.shared.delegate?.window??.rootViewController {
      rootVC.addChildViewController(childVC)
      childVC.swiftView = self
      addSubview(childVC.view)
      autoresizesSubviews = false
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
