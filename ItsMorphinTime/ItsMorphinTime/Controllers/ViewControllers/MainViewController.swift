//
//  MainViewController.swift
//  ItsMorphinTime
//
//  Created by James Lea on 6/14/21.
//

import UIKit

protocol displayCell: AnyObject {
    func showSelectedCell(name: String)
}

class MainViewController: UIViewController {
    // MARK: - Outlets
    @IBOutlet weak var teamImageView: UIImageView!
    @IBOutlet weak var teamTableView: UITableView!
    @IBOutlet weak var itsMorphinTimeButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        teamTableView.delegate = self
        teamTableView.dataSource = self
        RangerController.shared.loadFromPersistentStore()
    }
    
    // MARK: - Properties
    static weak var delegate: displayCell?
    
//    let redRanger = Ranger(name: "James Lea", superPower: "Big Mouth", favMove: "Trash talking", skills: "Table view Master. Protocol Delegate phycho", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065317943705600/unknown.png")
//
//    let blueRanger = Ranger(name: , superPower: "Contagious Laugh", favMove: "", skills: "", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065410834956288/unknown.png")
//
//    let blackRanger = Ranger(name: "Ethan Scott", superPower: "Faking it until you make it", favMove: "Ultimate Punch!", skills: "Googling, asking questions, and being uncertain", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065934494597140/unknown.png")
//
//    let pinkRanger = Ranger(name: "Lizzie Ferguson", superPower: "telekinesis", favMove: "Roundhouse kick", skills: "making apps look super clean. Coming up with ideas", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065873609293845/unknown.png")
//
//    let yellowRanger = Ranger(name: "Colton Swapp", superPower: "E N E R G Y", favMove: "Punch in the face", skills: "", image: "https://bbts1.azureedge.net/images/p/full/2020/12/fb17dd6e-3a50-4f8d-81fd-aa7fd13a90be.jpg")
//
//    let greenRanger = Ranger(name: "Max Poff", superPower: "Mullet Power", favMove: "", skills: "", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065689945702400/unknown.png")
    
    //MARK: - Actions
    @IBAction func redRangerButtonTapped(_ sender: Any) {
        RangerController.shared.createRanger(name: "James Lea", superPower: "Big Mouth", favMove: "Trash talking", skills: "Table view Master. Protocol Delegate phycho", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065317943705600/unknown.png")
        RangerController.shared.loadFromPersistentStore()
        teamTableView.reloadData()
    }
    
    @IBAction func blueRangerButtonTapped(_ sender: Any) {
        RangerController.shared.createRanger(name: "Anthony Byrd", superPower: "Contagious Laugh", favMove: "Surfboard", skills: "Coding til my arms go sore", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065410834956288/unknown.png")
        RangerController.shared.loadFromPersistentStore()
        teamTableView.reloadData()
    }
    
    @IBAction func blackRangerButtonTapped(_ sender: Any) {
        RangerController.shared.createRanger(name: "Ethan Scott", superPower: "Faking it until you make it", favMove: "Ultimate Punch!", skills: "Googling, asking questions, and being uncertain", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065934494597140/unknown.png")
        RangerController.shared.loadFromPersistentStore()
        teamTableView.reloadData()
    }
    
    @IBAction func pinkRangerButtonTapped(_ sender: Any) {
        RangerController.shared.createRanger(name: "Lizzie Ferguson", superPower: "telekinesis", favMove: "Roundhouse kick", skills: "making apps look super clean. Coming up with ideas", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065873609293845/unknown.png")
        RangerController.shared.loadFromPersistentStore()
        teamTableView.reloadData()
    }
    
    @IBAction func yellowRangerButtonTapped(_ sender: Any) {
        RangerController.shared.createRanger(name: "Colton Swapp", superPower: "E N E R G Y", favMove: "Punch in the face", skills: "", image: "https://bbts1.azureedge.net/images/p/full/2020/12/fb17dd6e-3a50-4f8d-81fd-aa7fd13a90be.jpg")
        RangerController.shared.loadFromPersistentStore()
        teamTableView.reloadData()
    }
    
    
    
    @IBAction func itsMorphinTimeButtonTapped(_ sender: Any) {
//        RangerController.shared.createRanger(name: "Max Poff", superPower: "Mullet Power", favMove: "Hair whip", skills: "Being trash at warzone", image: "https://cdn.discordapp.com/attachments/854020703527370813/854065689945702400/unknown.png")
    }
    


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RangerController.shared.rangers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rangerCell") as? RangerTableViewCell
        
        let ranger = RangerController.shared.rangers[indexPath.row]
        
        cell?.ranger = ranger
        
        return cell ?? UITableViewCell()
    }
    
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let destination = segue.destination as? DetailViewController,
                  let indexPath = teamTableView.indexPathForSelectedRow else {return}
            
            let ranger = RangerController.shared.rangers[indexPath.row]
            destination.ranger = ranger
        }
     }
     
    
}
