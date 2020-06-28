//
//  WorldCupViewController.swift
//  CampeosDasCopas
//
//  Created by Thiago Antonio Ramalho on 25/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class WinnerViewController: UIViewController {

    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var labelWinner: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var imgVice: UIImageView!
    @IBOutlet weak var labelVice: UILabel!
    @IBOutlet weak var tableView: UITableView!
    var wordcup: WorldCup? = nil

    override func viewDidLoad() {
        super.viewDidLoad()

        if let wc = wordcup {
            title = "Worldcup: \(wc.year)"
            imgWinner.image = UIImage(named: "\(wc.winner).png")
            labelWinner.text = wc.winner
            labelScore.text = "\(wc.winnerScore) x \(wc.viceScore)"
            imgVice.image = UIImage(named: "\(wc.vice).png")
            labelVice.text = wc.vice
        }
    }
}

extension WinnerViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        if let wc = wordcup {
            return wc.matches.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let wc = wordcup {
            let games = wc.matches[section].games
            return games.count
        }
        
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        
        
        return cell
    }
}

extension WinnerViewController: UITableViewDelegate {
    
}
