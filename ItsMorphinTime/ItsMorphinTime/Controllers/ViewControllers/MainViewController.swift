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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Properties
    static weak var delegate: displayCell?
    
    //MARK: - Actions
    @IBAction func redRangerButtonTapped(_ sender: Any) {
        MainViewController.delegate?.showSelectedCell(name: "James Lea")
    }
    
    @IBAction func blueRangerButtonTapped(_ sender: Any) {
        MainViewController.delegate?.showSelectedCell(name: "AnthonyByrd")
    }
    
    @IBAction func blackRangerButtonTapped(_ sender: Any) {
        MainViewController.delegate?.showSelectedCell(name: "Ethan Scott")
    }
    
    @IBAction func pinkRangerButtonTapped(_ sender: Any) {
        MainViewController.delegate?.showSelectedCell(name: "Lizzie")
    }
    
    @IBAction func yellowRangerButtonTapped(_ sender: Any) {
        MainViewController.delegate?.showSelectedCell(name: "Colton")
    }
    
    @IBAction func itsMorphinTimeButtonTapped(_ sender: Any) {
        
    }
    


}

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return RangerController.rangers.count
        return RangerController.rangers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "rangerCell") as? RangerTableViewCell
        
        let ranger = RangerController.rangers[indexPath.row]
        
        cell?.ranger = ranger
        
        return cell ?? UITableViewCell()
    }
    
    
     // MARK: - Navigation
     
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailVC" {
            guard let destination = segue.destination as? DetailViewController,
                  let indexPath = teamTableView.indexPathForSelectedRow else {return}
            
            let ranger = RangerController.rangers[indexPath.row]
//            destination.ranger = ranger
        }
     }
     
    
}
