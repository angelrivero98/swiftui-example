//
//  TextOverlayView.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/2/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI

struct TextOverlayView: View {
    let title: String
    let subTitle: String
    var body: some View {
        HStack {
            Text(title)
                .font(.title)
                .foregroundColor(.lairWhite)
                .foregroundColor(.primary)
                .fontWeight(.black)
                .shadow(radius: 5)
            Spacer()
            Text(subTitle)
                .foregroundColor(.lairWhite)
                .shadow(radius: 2)
        }
    }
}

struct TextOverlayView_Previews: PreviewProvider {
    static var previews: some View {
        TextOverlayView(title: "Lil Cagua", subTitle: "Age: 756")
    }
}
