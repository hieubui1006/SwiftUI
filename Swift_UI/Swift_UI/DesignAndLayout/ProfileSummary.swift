//
//  ProfileSummary.swift
//  Swift_UI
//
//  Created by mrhb on 18/12/2023.
//

import SwiftUI

struct ProfileSummary: View {
    var profile: Profile
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)
                
                Text("Notifications: \(profile.prefersNotifications ? "On" : "Off")")
                Text("Season Photo : \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date : ") + Text(profile.goalDate, style: .date)
            }
        }
    }
}

struct ProfileSummary_Previews: PreviewProvider {
    static var previews: some View {
        ProfileSummary(profile: Profile.default)
    }
}
