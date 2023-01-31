//
//  CastService.swift
//  temp
//
//  Created by Nick Pavlov on 1/30/23.
//

import Foundation

class CastService {
    private let jsonDecoder: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return decoder
    }()

    func getCast(of movie: Movie) async throws -> [MovieCastMember] {
        let url = URL(string: "https://api.themoviedb.org/3/movie/\(movie.id)/credits?api_key=8fc626b9b34342fd29749f14d1e6db2e")!

        let (data, _) = try await URLSession.shared.data(from: url)

        let decoded = try jsonDecoder.decode(MovieCreditsResponce.self, from: data)

        return decoded.cast
    }
}
