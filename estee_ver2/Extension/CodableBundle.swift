//
//  CodableBundle.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/9/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // Locate JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        // Create data property
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle")
        }
        
        // Create decoder
        let decoder = JSONDecoder()
        
        // Create decoded property
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }

        
        // Return decoded data
        return decodedData
    }
}

/*import UIKit

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, from file: String) -> T {

        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }

        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        let decoder = JSONDecoder()

        guard let decoded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        return decoded
    }
}*/
