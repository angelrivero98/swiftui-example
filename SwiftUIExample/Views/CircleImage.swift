//
//  CircleImage.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/1/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct CircleImage: View {
    let imageUrl: String
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        WebImage(url: URL(string: imageUrl))
            .resizable()
            .clipShape(Circle())
            .frame(width: width, height: height)
            .clipped()
            .shadow(radius: 5)
            .overlay(Circle().stroke(Color.lairBackgroundGray, lineWidth: 1))
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(imageUrl: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic", width: 80, height: 80)
    }
}
