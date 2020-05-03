//
//  TextView.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/1/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI

struct TextView: View {
    let text: String
    var body: some View {
        VStack {
        Text(text)
            .foregroundColor(.lairDarkGray)
            .lineLimit(1)
            .foregroundColor(.black)
            .padding(5)
        }
        .cornerRadius(15)
        .overlay(
            RoundedRectangle(cornerRadius: 15)
                .stroke(LinearGradient.lairDiagonalDarkBorder, lineWidth: 1)
        )
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Hello, World!")
    }
}
