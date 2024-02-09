//
//  TopMovesItemView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct TopMovesItemView: View {
    var body: some View {
        VStack (alignment: .leading){
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
            HStack {
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)

                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width: 140, height: 140)
        .overlay {
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 2)
        }
    }
}

struct TopMovesItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMovesItemView()
    }
}
