//
//  TopMoversView.swift
//  SwiftCoin
//
//  Created by bhavesh on 24/01/24.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack (alignment: .leading){
            Text("Top Movers")
                .font(.headline)

            ScrollView (.horizontal, showsIndicators: false) {
                HStack(spacing: 16) {
                    ForEach(0 ..< 5, id: \.self) { value in
                        TopMovesItemView()
                    }
                }
            }
        }
        .padding()
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}
