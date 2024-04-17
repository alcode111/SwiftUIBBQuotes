//
//  Character.swift
//  SwiftUIBBQuotes
//
//  Created by Ismaïl LP on 17/04/2024.
//

import Foundation

struct Character: Decodable {
    let name: String
    let birthday: String
    let occupations: [String]
    let images: [URL]
    let aliases: [String]
    let portrayedBy: String
}
