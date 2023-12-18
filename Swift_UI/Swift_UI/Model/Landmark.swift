//
//  Landmark.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import Foundation
import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavourite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    
    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.lat,
            longitude: coordinates.long
            )
    }
    
    struct Coordinates: Hashable, Codable {
        var lat: Double
        var long: Double
    }
    
    init(id: Int, name: String, park: String, state: String, description: String, imageName: String, coordinates: Coordinates, isFavourite: Bool) {
        self.id = id
        self.name = name
        self.park = park
        self.state = state
        self.description = description
        self.imageName = imageName
        self.coordinates = coordinates
        self.isFavourite = isFavourite
    }
}
