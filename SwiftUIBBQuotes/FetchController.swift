//
//  FetchController.swift
//  SwiftUIBBQuotes
//
//  Created by Ismaïl LP on 17/04/2024.
//

import Foundation

struct FetchController {
    enum NetworkError: Error {
        case badURL, badResponse
    }
    
    private let baseURL = URL(string: "https://breaking-bad-api-six.vercel.app/api")!
    
    func fetchQuote(from show: String) async throws -> Quote {
        let quoteURL = baseURL.appending(path: "quotes/random")
        var quoteComponents = URLComponents(url: quoteURL, resolvingAgainstBaseURL: true)
        let quoteQueryItem = URLQueryItem(name: "production", value: show.replacingOccurrences(of: " ", with: "+"))
        quoteComponents?.queryItems = [quoteQueryItem]
        
        guard let fetchURL = quoteComponents?.url else {
            throw NetworkError.badURL
        }
        
        let (data, response) = try await URLSession.shared.data(from: fetchURL)
        
        guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
            throw NetworkError.badResponse
        }
        
        let quote = try JSONDecoder().decode(Quote.self, from: data)
        
        return quote
    }
    
    func fetchCharacter(_ name: String) async throws -> Character {
        let characterURL = baseURL.appending(path: "characters")
        var characterComponents = URLComponents(url: characterURL, resolvingAgainstBaseURL: true)
        let characterQueryItem = URLQueryItem(name: "name", value: name.replacingOccurrences(of: " ", with: "+"))
    }
}
