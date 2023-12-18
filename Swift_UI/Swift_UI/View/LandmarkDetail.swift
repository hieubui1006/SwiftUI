//
//  LandmarkDetail.swift
//  Swift_UI
//
//  Created by mrhb on 17/12/2023.
//

import SwiftUI
import MapKit


struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }

    var body: some View {
        VStack {
            MapView(region: MKCoordinateRegion(center: landmark.locationCoordinate, span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)))
                .frame(height: 300)
                
            CircleImage(image: landmark.image)
                .offset(y: -((UIScreen.main.bounds.height / 7)))
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title3)
                        .foregroundColor(.blue)
                        .multilineTextAlignment(.center)
                    .padding(2)
                    FavoriteButton(isSet: modelData.landmarks[landmarkIndex].isFavourite)
                }
                
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landmark.name)")
                    .font(.title2)
                    .padding(2)
                Text("Descriptive text goes here.\(landmark.description)")
                    .foregroundColor(.secondary)
                
            }
            .padding()
            Spacer()
        }
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        let modelData = ModelData()
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
