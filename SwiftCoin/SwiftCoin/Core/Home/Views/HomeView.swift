//
//  HomeView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct HomeView: View {

    @StateObject var viewModel = HomeViewModel()

    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {

                TopMoversView(viewModel: viewModel)

                Divider()

                AllCoinsView(viewModel: viewModel)

            }.navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
