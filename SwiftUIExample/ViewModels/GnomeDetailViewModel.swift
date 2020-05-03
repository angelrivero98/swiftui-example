//
//  GnomeDetailViewModel.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/2/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Foundation
import SwiftUI

class GnomeDetailViewModel: ObservableObject {

    var gnome: Gnome

    var isProfessionsEmpty: Bool {
        return gnome.professions.isEmpty
    }

    var isFriendsEmpty: Bool {
        return gnome.friends.isEmpty
    }

    var age: String {
        return "Age: \(gnome.age)"
    }

    var image: String {
        return gnome.thumbnail
    }

    var name: String {
        return gnome.name
    }

    var weight: String {
        return "\(gnome.weight)"
    }

    var height: String {
        return "\(gnome.height)"
    }

    var professions: [String] {
        return gnome.professions
    }

    var friends: [String] {
        return gnome.friends
    }

    var hairColor: String {
        return gnome.hairColor
    }

    init(gnome: Gnome) {
        self.gnome = gnome
    }

    func getHairColor() -> Color? {
        return Color.getColor(by: gnome.hairColor.lowercased())
    }
}
