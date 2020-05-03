//
//  GnomeDetailView.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 5/1/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import SwiftUI
import SDWebImageSwiftUI

struct GnomeDetailView: View {

    @Environment(\.presentationMode) var presentationMode
    var viewModel: GnomeDetailViewModel

    var body: some View {
        ScrollView {
            VStack {
                VStack {
                    WebImage(url: URL(string: viewModel.image))
                                        .resizable()
                                        .frame(height: 300)
                            .overlay(
                                TextOverlayView(title: viewModel.name, subTitle: viewModel.age)
                                        .padding(10), alignment: .bottomLeading)
                            .edgesIgnoringSafeArea(.top)
                }
                HStack {
                    CardView(title: "Hair Color", subTitle: viewModel.hairColor)
                    Spacer()
                    CardView(title: "Weight", subTitle: viewModel.weight)
                    Spacer()
                    CardView(title: "Height", subTitle: viewModel.height)
                }
                    .padding(10)

                VStack {
                    if !viewModel.isProfessionsEmpty {
                        Text("Professions")
                            .foregroundColor(.lairDarkGray)
                            .font(.headline)
                            .padding(.bottom, -20)
                        CollectionView(values: viewModel.professions)
                            .frame(height: 60)
                    }
                    if !viewModel.isFriendsEmpty {
                        Text("Friends")
                            .foregroundColor(.lairDarkGray)
                            .font(.headline)
                            .padding(.bottom, -20)
                        CollectionView(values: viewModel.friends)
                            .frame(height: 60)
                    }
                }
            }
            Spacer()
        }
        .background(Color.lairBackgroundGray)
        .edgesIgnoringSafeArea(.all)
        
    }
}

struct GnomeDetailView_Previews: PreviewProvider {
    static let gnome = Gnome(id: 1, name: "Lil Cagua", thumbnail: "https://nokiatech.github.io/heif/content/images/ski_jump_1440x960.heic", age: 422, weight: 24.34453, height: 344.34242, hairColor: "Pink", professions: ["Metalworker", "Woodcarver", "Stonecarver", "Tinker", "Tailor", "Potter"], friends: ["Cogwitz Chillwidget", "Tinadette Chillbuster"])
    static var previews: some View {
        GnomeDetailView(viewModel: GnomeDetailViewModel(gnome: gnome))
    }
}
