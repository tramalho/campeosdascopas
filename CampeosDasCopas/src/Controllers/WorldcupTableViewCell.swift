//
//  WinnersTableViewCell.swift
//  CampeosDasCopas
//
//  Created by Thiago Antonio Ramalho on 27/06/20.
//  Copyright © 2020 Tramalho. All rights reserved.
//

import UIKit

class WorldcupTableViewCell: UITableViewCell {

    @IBOutlet weak var year: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var imgWinner: UIImageView!
    @IBOutlet weak var labelWinner: UILabel!
    @IBOutlet weak var labelScoreWinner: UILabel!
    @IBOutlet weak var imgVice: UIImageView!
    @IBOutlet weak var labelVice: UILabel!
    @IBOutlet weak var labelScoreVice: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(with cup: WorldCup) {
        year.text = "\(cup.year)"
        country.text = cup.country
        imgWinner.image = UIImage(named: "\(cup.winner).png")
        labelWinner.text = cup.winner
        labelScoreWinner.text = cup.winnerScore
        imgVice.image = UIImage(named: "\(cup.vice).png")
        labelVice.text = cup.vice
        labelScoreVice.text = cup.viceScore
    }
}
