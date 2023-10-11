//
//  Bundle-Decode.swift
//  B1G Football Team Information
//
//  Created by Colten Glover on 10/10/23.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        //Get URL to resource
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        
        //Turn the URL's contents into data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) in the bundle")
        }
        
        //Decode the data in JSON
        guard let loaded = try? JSONDecoder().decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) in the bundle")
        }
        
        return loaded
    }
}
