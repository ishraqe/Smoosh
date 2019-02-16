//
//  LeagueVC.swift
//  app-smoosh
//
//  Created by ishraqe manjur on 16/2/19.
//  Copyright © 2019 ishraqe manjur. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func onNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSeg", sender: self)
    }
    @IBAction func unwindFromSkillVC(segue: UIStoryboardSegue){
        
    }

}
