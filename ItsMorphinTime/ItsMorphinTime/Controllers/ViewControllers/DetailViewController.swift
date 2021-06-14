//
//  DetailViewController.swift
//  ItsMorphinTime
//
//  Created by James Lea on 6/14/21.
//

import UIKit

class DetailViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var rangerImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var superPowerLabel: UILabel!
    @IBOutlet weak var bestMoveLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var ranger: Ranger? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let ranger = ranger else {return}
        nameLabel.text = ranger.name
        superPowerLabel.text = ranger.superPower
        bestMoveLabel.text = ranger.favMove
        bioLabel.text = ranger.skills
        GlobalFns.displayPicture(url: ranger.image, UIImageView: rangerImageView)
        
        
    }
    
}
