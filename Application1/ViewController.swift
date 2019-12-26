//
//  ViewController.swift
//  Application1
//
//  Created by COE-009 on 11/12/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbltxt: UILabel!
    
    @IBAction func btntxt(_ sender: Any) {
        lbltxt.text = "KAJAL"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

