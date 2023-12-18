//
//  ModelData.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI


class ModelData: ObservableObject {
    var landmarks: [Landmark] = landmarkData()
    
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decode = JSONDecoder()
        return try decode.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}


func landmarkData() -> [Landmark] {
    return [Landmark(id: 1001,
                 name: "Turtle Rock",
                 park: "Joshua Tree National Park",
                 state: "California",
                 description: "",
                 imageName: "anh1",
                 coordinates: Landmark.Coordinates(lat: 34.011286, long: -116.166868),
                    isFavourite: true),
            
            Landmark(id: 1002,
                         name: "Silver Salmon Creek",
                         park: "Lake Clark National Park and Preserve",
                         state: "Alaska",
                         description: "",
                         imageName: "anh2",
                         coordinates: Landmark.Coordinates(lat: 59.980167, long: -152.665167),
                     isFavourite: false),
            
            Landmark(id: 1003,
                         name: "Chilkoot Trail",
                         park: "Klondike Gold Rush National Historical Park",
                         state: "Alaska",
                         description: "",
                         imageName: "anh3",
                         coordinates: Landmark.Coordinates(lat: 59.980167, long: -135.334571),
                     isFavourite: true),
    ]
}
