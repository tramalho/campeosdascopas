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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
