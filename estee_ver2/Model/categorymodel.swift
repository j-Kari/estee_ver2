//
//  categorymodel.swift
//  estee_ver2
//
//  Created by Kiran Kari on 7/9/23.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}
