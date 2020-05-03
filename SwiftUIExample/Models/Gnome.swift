//
//  Gnome.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 4/29/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Foundation

struct Gnome: Codable, Identifiable {
    var id: Int = 0
    var name: String = ""
    var thumbnail: String = ""
    var age: Int = 0
    var weight : Float = 0
    var height : Float = 0
    var hairColor : String = ""
    var professions : [String] = []
    var friends : [String] = []

    enum CodingKeys: String, CodingKey {
        case id
        case hairColor = "hair_color"
        case name
        case thumbnail
        case age
        case weight
        case height
        case professions
        case friends
    }

    init() {}

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = (try? container.decode(Int.self, forKey: .id)) ?? -1
        name = (try? container.decode(String.self, forKey: .name)) ?? ""
        hairColor = (try? container.decode(String.self, forKey: .hairColor)) ?? ""
        thumbnail = (try? container.decode(String.self, forKey: .thumbnail)) ?? ""
        age = (try? container.decode(Int.self, forKey: .age)) ?? 0
        weight = (try? container.decode(Float.self, forKey: .weight)) ?? 0
        height = (try? container.decode(Float.self, forKey: .weight)) ?? 0
        professions = (try? container.decode([String].self, forKey: .professions)) ?? []
        friends = (try? container.decode([String].self, forKey: .friends)) ?? []
    }

    init(id: Int, name: String, thumbnail: String, age: Int, weight : Float, height: Float, hairColor: String, professions: [String], friends: [String]) {
        self.id = id
        self.name = name
        self.thumbnail = thumbnail
        self.age = age
        self.weight = weight
        self.height = height
        self.hairColor = hairColor
        self.professions = professions
        self.friends = friends
    }
}
