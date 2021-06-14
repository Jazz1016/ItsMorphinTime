//
//  RangerModel.swift
//  ItsMorphinTime
//
//  Created by Ethan Scott on 6/14/21.
//

import Foundation

class Ranger: Codable {
    
    var name: String
    var superPower: String
    var favMove: String
    var skills: String
    var image: String
    
    init(name: String, superPower: String, favMove: String, skills: String, image: String) {
        self.name = name
        self.superPower = superPower
        self.favMove = favMove
        self.skills = skills
        self.image = image
    }
}

// MARK: - Extensions

extension Ranger: Equatable {
    static func == (lhs: Ranger, rhs: Ranger) -> Bool {
        return lhs.name == rhs.name
    }
}
