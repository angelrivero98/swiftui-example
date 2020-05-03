//
//  CardView.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/3/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI

struct CardView: View {
    let title: String
    let subTitle: String

    var body: some View {
        VStack {
            Text(title)
                .foregroundColor(.lairDarkGray)
                .font(.headline)
                .fontWeight(.medium)
            Text(subTitle)
                .foregroundColor(.lairDarkGray)
            Spacer()
        }
        .padding()
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(LinearGradient.lairDiagonalDarkBorder, lineWidth: 2)
        )
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(title: "Height", subTitle: "53535.54644")
    }
}
