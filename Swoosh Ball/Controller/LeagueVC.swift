//
//  LeagueVC.swift
//  Swoosh Ball
//
//  Created by MacBook Pro on 12/1/18.
//  Copyright © 2018 Diaa SAlAm. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    var player : Player!
    
    @IBOutlet var nextButton: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        player = Player()
        
    }
    

    @IBAction func nextPage(_ sender: Any) {
    performSegue(withIdentifier: "skillVCsegue", sender: self)
    }
    
    @IBAction func selectMens(_ sender: Any) {
        selectLeague(leagueType: "Mens")
    }
    @IBAction func selectWomens(_ sender: Any) {
        selectLeague(leagueType: "Womens")
    }
    
    @IBAction func selectCoed(_ sender: Any) {
        selectLeague(leagueType: "Co-ed")
    }
    
    func selectLeague(leagueType: String) {
        nextButton.isEnabled = true
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player 
    }
    
}
}
