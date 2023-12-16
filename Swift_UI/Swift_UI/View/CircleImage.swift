//
//  CircleImage.swift
//  Swift_UI
//
//  Created by mrhb on 16/12/2023.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("Img")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
                    .shadow(radius: 7)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
