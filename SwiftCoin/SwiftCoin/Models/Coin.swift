//
//  Coin.swift
//  SwiftCoin
//
//  Created by bhavesh on 08/02/24.
//

import Foundation

// MARK: - Welcome
struct Coin: Codable, Identifiable {
    let id: String
    let symbol, name: String?
    let image: String?
    let currentPrice, marketCap, marketCapRank, fullyDilutedValuation: Double?
    let totalVolume, high24H, low24H: Double?
    let priceChange24H, priceChangePercentage24H: Double?
    let marketCapChange24H: Double?
    let marketCapChangePercentage24H: Double?
    let circulatingSupply, totalSupply, maxSupply, ath: Double?
    let athChangePercentage: Double?
    let athDate: String?
    let atl, atlChangePercentage: Double?
    let atlDate: String?
    let lastUpdated: String?
    let priceChangePercentage24HInCurrency: Double?

    enum CodingKeys: String, CodingKey {
        case id, symbol, name, image
        case currentPrice = "current_price"
        case marketCap = "market_cap"
        case marketCapRank = "market_cap_rank"
        case fullyDilutedValuation = "fully_diluted_valuation"
        case totalVolume = "total_volume"
        case high24H = "high_24h"
        case low24H = "low_24h"
        case priceChange24H = "price_change_24h"
        case priceChangePercentage24H = "price_change_percentage_24h"
        case marketCapChange24H = "market_cap_change_24h"
        case marketCapChangePercentage24H = "market_cap_change_percentage_24h"
        case circulatingSupply = "circulating_supply"
        case totalSupply = "total_supply"
        case maxSupply = "max_supply"
        case ath
        case athChangePercentage = "ath_change_percentage"
        case athDate = "ath_date"
        case atl
        case atlChangePercentage = "atl_change_percentage"
        case atlDate = "atl_date"
        case lastUpdated = "last_updated"
        case priceChangePercentage24HInCurrency = "price_change_percentage_24h_in_currency"
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.symbol = try container.decodeIfPresent(String.self, forKey: .symbol)
        self.name = try container.decodeIfPresent(String.self, forKey: .name)
        self.image = try container.decodeIfPresent(String.self, forKey: .image)
        self.currentPrice = try container.decodeIfPresent(Double.self, forKey: .currentPrice)
        self.marketCap = try container.decodeIfPresent(Double.self, forKey: .marketCap)
        self.marketCapRank = try container.decodeIfPresent(Double.self, forKey: .marketCapRank)
        self.fullyDilutedValuation = try container.decodeIfPresent(Double.self, forKey: .fullyDilutedValuation)
        self.totalVolume = try container.decodeIfPresent(Double.self, forKey: .totalVolume)
        self.high24H = try container.decodeIfPresent(Double.self, forKey: .high24H)
        self.low24H = try container.decodeIfPresent(Double.self, forKey: .low24H)
        self.priceChange24H = try container.decodeIfPresent(Double.self, forKey: .priceChange24H)
        self.priceChangePercentage24H = try container.decodeIfPresent(Double.self, forKey: .priceChangePercentage24H)
        self.marketCapChange24H = try container.decodeIfPresent(Double.self, forKey: .marketCapChange24H)
        self.marketCapChangePercentage24H = try container.decodeIfPresent(Double.self, forKey: .marketCapChangePercentage24H)
        self.circulatingSupply = try container.decodeIfPresent(Double.self, forKey: .circulatingSupply)
        self.totalSupply = try container.decodeIfPresent(Double.self, forKey: .totalSupply)
        self.maxSupply = try container.decodeIfPresent(Double.self, forKey: .maxSupply)
        self.ath = try container.decodeIfPresent(Double.self, forKey: .ath)
        self.athChangePercentage = try container.decodeIfPresent(Double.self, forKey: .athChangePercentage)
        self.athDate = try container.decodeIfPresent(String.self, forKey: .athDate)
        self.atl = try container.decodeIfPresent(Double.self, forKey: .atl)
        self.atlChangePercentage = try container.decodeIfPresent(Double.self, forKey: .atlChangePercentage)
        self.atlDate = try container.decodeIfPresent(String.self, forKey: .atlDate)
        self.lastUpdated = try container.decodeIfPresent(String.self, forKey: .lastUpdated)
        self.priceChangePercentage24HInCurrency = try container.decodeIfPresent(Double.self, forKey: .priceChangePercentage24HInCurrency)
    }
}

