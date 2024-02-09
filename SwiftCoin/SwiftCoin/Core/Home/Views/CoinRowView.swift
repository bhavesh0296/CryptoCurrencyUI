//
//  CoinRowView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack {
            // Market cap Rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)

            // Image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)

            // Coin Name Info
            VStack (alignment: .leading, spacing: 4) {
                Text("Bitcoin")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)

                Text("BTC")
                    .font(.caption)
                    .padding(.leading, 6)
            }.padding(.leading, 2)

            Spacer()

            // Coin Price Info
            VStack (alignment: .trailing, spacing: 4) {
                Text("$20,330.00")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .padding(.leading, 4)

                Text("-5.60%")
                    .font(.caption)
                    .padding(.leading, 6)
            }.padding(.leading, 2)
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}
