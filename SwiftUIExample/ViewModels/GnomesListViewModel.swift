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

    func generateNDimensionArray(columns: Int) -> [GnomeColumn] {
        var gnomesColumns = [GnomeColumn]()
        let _ = gnomes.clump(by: columns).map({ values in
            gnomesColumns.append(GnomeColumn(gnomes: values))
        })
        return gnomesColumns
    }

    func widthForItem() -> CGFloat {
        return screenSize.width - 40
    }

    func heightForItem() -> CGFloat {
        return 200
    }
}
