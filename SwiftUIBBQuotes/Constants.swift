//
//  Constants.swift
//  SwiftUIBBQuotes
//
//  Created by Ismaïl LP on 18/04/2024.
//

import Foundation

extension String {
    var replaceSpaceWithPlus: String {
        self.replacingOccurrences(of: " ", with: "+")
    }
}
