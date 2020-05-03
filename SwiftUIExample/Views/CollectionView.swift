//
//  CollectionView.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/1/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI

struct CollectionView: View {
    let values: [String]
    var body: some View {
        ScrollView (.horizontal, showsIndicators: false) {
            HStack {
                ForEach(values, id: \.self) { value in
                    TextView(text: value)
                }
            }.padding(5)
        }
    }
}

struct CollectionView_Previews: PreviewProvider {
    static var previews: some View {
        CollectionView(values: ["Value1", "Value2"])
    }
}
