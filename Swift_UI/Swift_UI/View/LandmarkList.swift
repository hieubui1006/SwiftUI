//
//  LandmarkList.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List {
            LandmarksRow(landMark: landmarks[0])
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
