//
//  Landmark.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import Foundation
import SwiftUI
import CoreLocation


struct Landmark: Hashable, Codable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    
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
}
