//
//  ViewController.swift
//  coredataapp
//
//  Created by COE-009 on 11/12/19.
//  Copyright © 2019 COE-009. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    var appDel:AppDelegate?
    var managedContext:NSManagedObjectContext? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.appDel = UIApplication.shared.delegate as? AppDelegate
        
        self.managedContext = (self.appDel?.persistentContainer.viewContext)
        // Do any additional setup after loading the view, typically from a nib.
    }
    var UserId = 0

    @IBOutlet weak var txtlbl1: UITextField!
    
    @IBOutlet weak var txtlbl2: UITextField!
    
    @IBAction func btnaction(_ sender: Any) {
        let profileDescription = NSEntityDescription.entity(forEntityName: "MyData", in: self.managedContext!)
        
        let profile = NSManagedObject.init(entity: profileDescription!, insertInto: self.managedContext!)
        profile.setValue(txtlbl1.text!, forKey: "name")
        profile.setValue(txtlbl2.text!, forKey: "password")
       
        //profile.setValue(UserId, forKey: "profileid")
        
        do{
            try self.managedContext?.save()
        }
        catch{
            print("Error in save!")
        }
        
    }
    
    }
     func didReceiveMemoryWarning() {
        
         didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
}




