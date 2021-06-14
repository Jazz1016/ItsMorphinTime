//
//  RangerTableViewCell.swift
//  ItsMorphinTime
//
//  Created by James Lea on 6/14/21.
//

import UIKit



class RangerTableViewCell: UITableViewCell {
    // MARK: - Outlets
    @IBOutlet weak var rangerImageView: UIImageView!
    
    var ranger: Ranger? {
        didSet {
            updateView()
        }
    }
    
    func updateView(){
        self.contentView.isHidden = true
        MainViewController.delegate = self
    }
    
    func showCell(name: String){
        if name == ranger?.name {
            self.contentView.isHidden = false
        }
    }

}

extension RangerTableViewCell: displayCell {
    func showSelectedCell(name: String) {
        showCell(name: name)
    }
    
}
