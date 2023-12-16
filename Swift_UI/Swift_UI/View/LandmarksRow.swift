//
//  LandmarksRow.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI

struct LandmarksRow: View {
    
    var landMark: Landmark
    
    var body: some View {
        HStack {
            landMark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landMark.name)
            
            Spacer()
        }
    }
}

struct LandmarksRow_Previews: PreviewProvider {
    static var previews: some View {
        LandmarksRow(landMark: landmarks[0])
    }
}
