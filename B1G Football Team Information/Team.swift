//
//  Team.swift
//  B1G Football Team Information
//
//  Created by Colten Glover on 10/10/23.
//

import Foundation

struct Team: Codable, Identifiable {
    let id: Int
    let school: String
    let mascot: String
    let color: String
    let alt_color: String?
}
