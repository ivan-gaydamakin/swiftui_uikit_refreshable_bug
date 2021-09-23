//
//  ViewController.swift
//  TosterUIKit
//
//  Created by Ivan Gaydamakin on 15.09.2021.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tap(_ sender: Any) {
        let vc = UIHostingController(rootView: ContentView())
        let nv = PushingOverTabBarNavigationController(rootViewController: vc)
        self.present(nv, animated: true)
    }
}


private class PushingOverTabBarNavigationController: UINavigationController {


}
