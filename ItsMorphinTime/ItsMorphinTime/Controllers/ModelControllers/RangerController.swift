//
//  RangerController.swift
//  ItsMorphinTime
//
//  Created by Ethan Scott on 6/14/21.
//

import Foundation

class RangerController {
    static let shared = RangerController()
    
    var rangers: [Ranger] = []
    
    func createRanger(name: String, superPower: String, favMove: String, skills: String, image: String){
        let newRanger = Ranger(name: name, superPower: superPower, favMove: favMove, skills: skills, image: image)
        
        for i in rangers {
            if i.name == newRanger.name {
                print("Ranger already Added")
                return
            }
        }
        rangers.append(newRanger)
        saveToPersistentStore()
    }
    
    func deleteRanger(ranger: Ranger){
        guard let rangerIndex = rangers.firstIndex(of: ranger) else {return}
        
        rangers.remove(at: rangerIndex)
        
        saveToPersistentStore()
        
    }
    
//    static let rangers: [Ranger] = {
//

//
//        return [redRanger, blueRanger, blackRanger, pinkRanger, yellowRanger, greenRanger]
//    }()
    
    // MARK: - Persistence
    func createPersistentStore() -> URL {
        let url = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileURL = url[0].appendingPathComponent("ItsMorphinTime.json")
        return fileURL
    }
    
    func saveToPersistentStore() {
        do {
            let data = try JSONEncoder().encode(rangers)
            try data.write(to: createPersistentStore())
        } catch {
            print("ERROR ENCODING SONGS")
        }
    }
    
    func loadFromPersistentStore() {
        do {
            let data = try Data(contentsOf: createPersistentStore())
            rangers = try JSONDecoder().decode([Ranger].self, from: data)
        } catch {
            print("ERROR LOADING SONGS")
        }
    }
}
