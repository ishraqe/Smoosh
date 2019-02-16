//
//  LeagueVC.swift
//  app-smoosh
//
//  Created by ishraqe manjur on 16/2/19.
//  Copyright © 2019 ishraqe manjur. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {
    var player : Player!
    
    @IBOutlet weak var mensBtn: BorderButton!
    @IBOutlet weak var wemensBtn: BorderButton!
    @IBOutlet weak var coedBtn: BorderButton!
    
    @IBOutlet weak var nxtBtn: BorderButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        player = Player()
    }
    
    @IBAction func onNextTap(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSeg", sender: self)
    }
    @IBAction func unwindFromSkillVC(segue: UIStoryboardSegue){
        
    }
    @IBAction func mensClicked(_ sender: Any) {
         selectOption(playerType: "mens")
    }
    @IBAction func coedClicked(_ sender: Any) {
         selectOption(playerType: "wemens")
    }
    @IBAction func wemensClicked(_ sender: Any) {
         selectOption(playerType: "code")
    }
    func selectOption(playerType: String){
        if playerType == "mens" {
            mensBtn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            mensBtn.setTitleColor(UIColor.black, for: .normal)
        } else if playerType == "wemens"  {
            wemensBtn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            wemensBtn.setTitleColor(UIColor.black, for: .normal)
        } else if playerType == "code"  {
            coedBtn.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            coedBtn.setTitleColor(UIColor.black, for: .normal)
        }
        player.desiredLeague = playerType
        nxtBtn.isEnabled = true
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
    

}
