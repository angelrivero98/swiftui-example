//
//  GnomeRow.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/2/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI

struct GnomeRow: View {
    let image: String
    let name: String
    let age: Int
    var body: some View {
        HStack {
            CircleImage(imageUrl: image, width: 80, height: 80)
                .padding(.init(arrayLiteral: .top, .bottom, .leading), 10)
            VStack (alignment: .leading) {
                Text(name)
                    .font(.body)
                    .foregroundColor(.lairDarkGray)
                    .fontWeight(.bold)
                    .foregroundColor(.primary)
                    .lineLimit(nil)
                Text("Age: \(age)")
                    .foregroundColor(.lairDarkGray)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
        .cornerRadius(10)
        .overlay(
            RoundedRectangle(cornerRadius: 10)
            .stroke(LinearGradient.lairDiagonalDarkBorder, lineWidth: 2)
        )
    }
}

struct GnomeRow_Previews: PreviewProvider {
    static var previews: some View {
        GnomeRow(image: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic", name: "Lil Cagua", age: 422)
    }
}
