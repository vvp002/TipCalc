//
//  SettingsViewController.swift
//  Tippy
//
//  Created by Vivian Pham on 1/4/17.
//  Copyright © 2017 Vivian Pham. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tipChanger: UISegmentedControl!
    @IBOutlet weak var background: UIImageView!
    
    override func viewWillAppear(_ animated: Bool) {
        
        //Save default tip value that is set
        let defaults = UserDefaults.standard;
        let defTip = defaults.integer(forKey: "defaultTip")
        tipChanger.selectedSegmentIndex = defTip
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func defaultTipChanged(_ sender: AnyObject) {
        
        let defTip = tipChanger.selectedSegmentIndex
        let defaults = UserDefaults.standard
        
        //Save value of defTip into key "defaultTip"
        defaults.set(defTip, forKey: "defaultTip")
        defaults.synchronize()
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
