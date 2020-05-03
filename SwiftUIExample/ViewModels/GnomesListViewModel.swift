//
//  GnomesListViewModel.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 4/29/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Combine
import Foundation
import UIKit

class GnomesListViewModel: ObservableObject {

    @Published var gnomes: [Gnome] {
        willSet {
            self.objectWillChange.send()
        }
    }

    let screenSize = UIScreen.main.bounds

    public init() {
        self.gnomes = []
        self.fetch()
    }

    func fetch() {
        ApiService.shared.fetchGnomes(result: { result in
            switch result {
            case .success(let gnomes):
                self.gnomes = gnomes
            default:
                break
            }
        })
    }

    func searchGnomes(text: String) -> [Gnome] {
        return gnomes.filter {
            text.isEmpty ? true : $0.name.lowercased().contains(text.lowercased())
        }
    }
}
