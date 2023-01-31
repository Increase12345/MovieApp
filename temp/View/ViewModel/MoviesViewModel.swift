//
//  MoviesViewModel.swift
//  temp
//
//  Created by Nick Pavlov on 1/24/23.
//

import Foundation

@MainActor
class MoviesViewModel: ObservableObject {
    enum State {
        case loading
        case loaded(movies: [Movie])
        case error(Error)
    }
    
    @Published var state: State = .loaded(movies: .mock)
    
    let service = MoviesService()
    
    func loadMovies() async {
        state = .loading
        do {
            let movies = try await service.getMoviesFromAPI()
            state = .loaded(movies: movies)
        } catch {
            state = .error(error)
        }
    }
}
