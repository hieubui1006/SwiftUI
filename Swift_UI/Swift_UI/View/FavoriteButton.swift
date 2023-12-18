//
//  FavoriteButton.swift
//  Swift_UI
//
//  Created by mrhb on 17/12/2023.
//

import SwiftUI

struct FavoriteButton: View {
    @State var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toogle Favourite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundStyle(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: true)
    }
}
