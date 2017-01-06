//
//  ViewController.swift
//  Tippy
//
//  Created by Vivian Pham on 12/19/16.
//  Copyright © 2016 Vivian Pham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Views in Scene
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var background: UIImageView!
    
    //Access UserDefaults
    let defaults = UserDefaults.standard
    
    //Retrieve default tip and update it
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("view will appear")
        // This is a good place to retrieve the default tip percentage from UserDefaults
        // and use it to update the tip amount
        
        
        let defTip = defaults.integer(forKey: "defaultTip")
        tipControl.selectedSegmentIndex = defTip
    }
    
    //Make bill always the first responder and recalculate tip if 
    //anything was changed from defaults snychronising
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did appear")
        
        billField.becomeFirstResponder()
        defaults.synchronize()
        
        calculateTip(self)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("view did disappear")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: AnyObject) {
        view.endEditing(true)
    }

    @IBAction func calculateTip(_ sender: AnyObject) {
        
        //Array of tip percentages used
        let tipPercentages = [0.18, 0.2, 0.25]
        
        //Calculate the bill, tip amount, and total
        let bill = Double(billField.text!) ?? 0
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update the amount to the label
        tipLabel.text = String(format: "$%.2f", tip)
        totalLabel.text = String(format: "$%.2f", total)
        
        //Save updates and set value of bill to key "myBill"
        defaults.synchronize()
        defaults.set(bill, forKey: "myBill")
        defaults.synchronize()
    }
}

