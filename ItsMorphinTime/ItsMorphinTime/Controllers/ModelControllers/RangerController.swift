//
//  RangerController.swift
//  ItsMorphinTime
//
//  Created by Ethan Scott on 6/14/21.
//

import Foundation

class RangerController {
    
    static let rangers: [Ranger] = {
        
        let redRanger = Ranger(name: "James Lea", superPower: "", favMove: "", skills: "", image: "")
        
        let blueRanger = Ranger(name: "Anthony Byrd", superPower: "", favMove: "", skills: "", image: "")
        
        let blackRanger = Ranger(name: "Ethan Scott", superPower: "Faking it until you make it", favMove: "Ultimate Punch!", skills: "Googling, asking questions, and being uncertain", image: "")
        
        let pinkRanger = Ranger(name: "Lizzie Ferguson", superPower: "", favMove: "", skills: "", image: "")
        
        let yellowRanger = Ranger(name: "Colton Swapp", superPower: "E N E R G Y", favMove: "", skills: "", image: "")
        
        let greenRanger = Ranger(name: "Max Poff", superPower: "", favMove: "", skills: "", image: "")
        
        return [redRanger, blueRanger, blackRanger, pinkRanger, yellowRanger, greenRanger]
    }()
}
