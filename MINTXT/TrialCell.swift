//
//  TrialCell.swift
//  MINTXT
//
//  Created by madhav sharma on 10/19/20.
//

import UIKit

class TrialCell: UITableViewCell {

    @IBOutlet weak var trialTitle: UILabel!
    
    func configureCell(title: String) {
        self.trialTitle.text = title
    }

}
