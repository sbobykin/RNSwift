//
//  ViewController.swift
//  SwiftSampleApp
//


import UIKit

class ChildViewController: UIViewController {
    var swiftView: SwiftView?
    
    @IBOutlet weak var swiftSideLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func swiftButtonTapped(_ sender: Any) {
        /*if let svDelegate = swiftView?.delegate {
            svDelegate.swiftButtonTapped()
        }*/
        
        if let swiftView = swiftView {
            guard let onSwiftButtonPressed = swiftView.onSwiftButtonPressed else { return }
            
            onSwiftButtonPressed([:])
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

