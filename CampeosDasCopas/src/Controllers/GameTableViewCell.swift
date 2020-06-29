//
//  GameTableViewCell.swift
//  CampeosDasCopas
//
//  Created by Thiago Antonio Ramalho on 28/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class GameTableViewCell: UITableViewCell {

    @IBOutlet weak var imgHome: UIImageView!
    @IBOutlet weak var labelHome: UILabel!
    @IBOutlet weak var labelScore: UILabel!
    @IBOutlet weak var labelAway: UILabel!
    @IBOutlet weak var imgAway: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func prepare(with game:Game) {
        labelHome.text = game.home
        labelAway.text = game.away
        labelScore.text = game.score
        imgHome.image = UIImage(named: "\(game.home).png")
        imgAway.image = UIImage(named: "\(game.away).png")
    }
}
