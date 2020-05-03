//
//  ApiService.swift
//  SwiftUIExample
//
//  Created by ANGEL-RIVERO on 4/29/20.
//  Copyright © 2020 Kavak. All rights reserved.
//

import Foundation

class ApiService {

    static let shared = ApiService()
    let url = "https://raw.githubusercontent.com/rrafols/mobile_test/master/data.json"

    /**
     Fetch and return gnomes.
     
     - Parameter result: Where your going to use your gnomes.
     
     - Throws: `Error`
     if it couldn't decode properly.
     
     - Returns: List of gnomes `[Gnome]`.
     */
    func fetchGnomes(result: @escaping (Result<[Gnome], Error>) -> Void) {
        guard let url = URL(string: url) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let data = data {
                do {
                    let gnomesResult = try JSONDecoder().decode(GnomesResult.self, from: data)
                    DispatchQueue.main.async {
                        result(.success(gnomesResult.brastlewark))
                    }
                } catch let error {
                    DispatchQueue.main.async {
                        result(.failure(error))
                    }
                }
            } else if let error = err {
                DispatchQueue.main.async {
                    result(.failure(error))
                }
            }
        }.resume()
    }
}
