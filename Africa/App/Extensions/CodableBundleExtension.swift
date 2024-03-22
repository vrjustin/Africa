//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Justin Maronde on 3/22/24.
//

import Foundation

extension Bundle {
    //Example for specific decoding: Refactor this to a generic decodable but keep for reference:
//    func decodeCoverImages(_ file: String) -> [CoverImage] {
//        guard let url = self.url(forResource: file, withExtension: nil) else {
//            fatalError("Failed to locate \(file) in bundle")
//        }
//        
//        guard let data = try? Data(contentsOf: url) else {
//            fatalError("Failed to get contents of \(file) from url: \(url)")
//        }
//        
//        let decoder = JSONDecoder()
//        
//        guard let coverImages = try? decoder.decode([CoverImage].self, from: data) else {
//            fatalError("Failed to decode file: \(file) from data: \(data)")
//        }
//        
//        return coverImages
//    }
    
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to get contents of \(file) from url: \(url)")
        }
        
        let decoder = JSONDecoder()
        
        guard let decodedData = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode file: \(file) from data: \(data)")
        }
        
        return decodedData
    }
}
