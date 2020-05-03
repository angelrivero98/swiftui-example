//
//  GnomesList.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 4/29/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Combine
import SwiftUI

struct GnomesListView: View {

    @ObservedObject var viewModel = GnomesListViewModel()
    @State private var selectedGnome: Gnome = Gnome()
    @State private var showModal = false
    @State private var searchText: String = ""
    
    init() {
        UITableView.appearance().separatorStyle = .none
    }

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText, placeholder: "Search Gnomes")
                List (viewModel.searchGnomes(text: self.searchText), id: \.id) { gnome in
                    GnomeRow(image: gnome.thumbnail, name: gnome.name, age: gnome.age)
                    .onTapGesture {
                        self.showModal.toggle()
                        self.selectedGnome = gnome
                    }
                }
                .id(UUID())
                .navigationBarTitle("Gnomes")
                .sheet(isPresented: $showModal) {
                    GnomeDetailView(viewModel: GnomeDetailViewModel(gnome: self.selectedGnome))
                }
            }
        }
        .colorMultiply(Color.lairBackgroundGray)
        .animation(.default)
    }
}


struct GnomesList_Previews: PreviewProvider {
    static var previews: some View {
        GnomesListView()
    }
}
