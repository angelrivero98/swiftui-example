//
//  Extensions.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/1/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Foundation

extension Sequence {
    func clump(by clumpsize:Int) -> [[Element]] {
        let slices : [[Element]] = self.reduce(into:[]) {
            memo, cur in
            if memo.count == 0 {
                return memo.append([cur])
            }
            if memo.last!.count < clumpsize {
                memo.append(memo.removeLast() + [cur])
            } else {
                memo.append([cur])
            }
        }
        return slices
    }
}
