//
//  HomeViewModel.swift
//  SwiftCoin
//
//  Created by bhavesh on 26/01/24.
//

import Foundation

class HomeViewModel: ObservableObject {

    init() {
        fetchCoinData()

//        let data = []
    }

    func fetchCoinData() {
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false&price_change_percentage=24h&locale=es"

        guard let url = URL(string: urlString) else { return }

        URLSession.shared.dataTask(with: URLRequest(url: url)) { data, response, error in
            if let error = error {
                print("DEBUG: Error \(error.localizedDescription)")
                return
            }

            if let response = response as? HTTPURLResponse {
                print("DEBUG: Response code \(response)")
            }

            guard let data = data else { return }
            let dataAsString = String(data: data, encoding: .utf8)
            print(dataAsString)
            print("DEBUG: Data \(data)")

            do {
                let coin = try JSONDecoder().decode([Coin].self, from: data)
                print(')
            }

        }.resume()
    }
}
