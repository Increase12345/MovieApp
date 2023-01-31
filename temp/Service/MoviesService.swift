//
//  MoviesService.swift
//  temp
//
//  Created by Nick Pavlov on 1/24/23.
//

import Foundation

class MoviesService {
    func getMoviesFromAPI() async throws -> [Movie] {
        let url = URL(string: "https://api.themoviedb.org/3/movie/upcoming?api_key=8fc626b9b34342fd29749f14d1e6db2e")!
        
        let (data, _) = try await URLSession.shared.data(from: url)
        
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        
        let decoded = try decoder.decode(MovieResponse.self, from: data)
        
        return decoded.results
    }
}
