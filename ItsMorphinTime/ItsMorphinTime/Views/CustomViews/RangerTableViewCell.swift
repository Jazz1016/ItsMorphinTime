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

    @IBOutlet weak var nameLabel: UILabel!

    
    var ranger: Ranger? {
        didSet {
            updateView()
        }
    }
    
    func updateView(){
        MainViewController.delegate = self
        GlobalFns.displayPicture(url: ranger?.image, UIImageView: rangerImageView)
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
