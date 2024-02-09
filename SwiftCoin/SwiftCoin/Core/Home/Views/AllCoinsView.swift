//
//  AllCoinsView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Text("All Coins")
                .font(.headline)
                .padding()

            HStack {
                Text("Coin")

                Spacer()

                Text("Prices")
            }.font(.caption)
                .foregroundColor(.gray)
                .padding()

            ScrollView {
                VStack {
                    ForEach(0 ..< 50, id: \.self) { value in
                        CoinRowView()
                    }
                }
            }
        }
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}
