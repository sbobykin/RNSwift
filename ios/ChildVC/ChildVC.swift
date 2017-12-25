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
        print("swift button tapped")
        swiftSideLabel.text = "Swift side: swift button tapped"
        
        if let svDelegate = swiftView?.delegate {
            svDelegate.swiftButtonTapped()
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

