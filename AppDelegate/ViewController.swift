//
//  ViewController.swift
//  AppDelegate
//
//  Created by iFlame on 20/06/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let objStundent : Stundent = Stundent(name: "Chintant", standard: 25)
        //objStundent.printMyInfo()
        
        let objEmployee : Employee = Employee(name: "Chintant", JobName: "IOS DEveloper")
        //objEmployee.printMyInfo()
        
        
        printDetails(objHumanInfoDelegate: objStundent)
        printDetails(objHumanInfoDelegate: objEmployee)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
         }
    
    @IBAction func buttonBackPressed(sender: AnyObject) {
        let popedViewController = self.navigationController?.popViewController(animated: true)
        print("Poped ==>> ", popedViewController ?? "NO o VCCC")
    }
    
    func printDetails(objHumanInfoDelegate : HumanInfoDelegate) {
        objHumanInfoDelegate.printMyInfo()
    }

}