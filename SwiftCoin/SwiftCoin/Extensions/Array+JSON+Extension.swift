//
//  Array+JSON+Extension.swift
//  SwiftCoin
//
//  Created by bhavesh on 26/01/24.
//

import Foundation

extension Array {

    func loadJSONData<T: Decodable>(from file: String) -> [T] {
        if let fileResourseURL = Bundle.main.url(forResource: file, withExtension: "json"),
           let data = try? Data(contentsOf: fileResourseURL),
           let arrayData = try? JSONDecoder().decode([T].self, from: data) {

            return arrayData
        }
        return []
    }
}
