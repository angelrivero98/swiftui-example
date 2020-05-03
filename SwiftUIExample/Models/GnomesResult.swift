//
//  GnomesResult.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 4/30/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Foundation

struct GnomesResult: Decodable {
    let brastlewark: [Gnome]

    enum CodingKeys: String, CodingKey {
        case brastlewark = "Brastlewark"
    }
}
