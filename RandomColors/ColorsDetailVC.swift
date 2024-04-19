//
//  ColorsDetailVC.swift
//  RandomColors
//
//  Created by Rohan on 9/3/23.
//

import UIKit

class ColorsDetailVC: UIViewController {

    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = color ?? UIColor.red
    }
}
