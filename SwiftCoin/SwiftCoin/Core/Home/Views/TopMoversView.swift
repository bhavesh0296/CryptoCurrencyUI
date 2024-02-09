//
//  TopMoversView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct TopMoversView: View {

    @StateObject var viewModel: HomeViewModel

    var body: some View {
        VStack (alignment: .leading){
            Text("Top Movers")
                .font(.headline)

            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(viewModel.topMoversCoins) { coin in
                        TopMovesItemView(coin: coin)
                    }
                }
            }
        }
        .padding()
    }
}

//struct TopMoversView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversView()
//    }
//}
