//
//  LandmarkList.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State var showFavouriteOnly = false
    
    var filterLanmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavouriteOnly || landmark.isFavourite)
        }
    }
    
    var body: some View {
        NavigationSplitView {
            List {
                Toggle(isOn: $showFavouriteOnly) {
                    Text("Favourite only")
                }
                
                ForEach(filterLanmarks) { landmark in
                    NavigationLink {
                        LandmarkDetail(landmark: landmark)
                            .environmentObject(modelData)
                    } label: {
                        LandmarksRow(landMark: landmark)
                    }
                }
                .animation(.default, value: filterLanmarks)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
