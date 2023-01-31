//
//  Movie.swift
//  temp
//
//  Created by Nick Pavlov on 1/24/23.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Identifiable, Decodable {
    let id: Int
    let title: String
    let overview: String
    let posterPath: String
    var posterURl: URL? {
        URL(string: "https://image.tmdb.org/t/p/w400/\(posterPath)")
    }
}

extension Movie {
    static var mock: Movie {
        Movie(id: 507086, title: "Jurrasic", overview: "For years rtc fsdvjsldf vsjakjvaelrfv aevjaleokrve rvkejrvoewirv wervjeowvjweovewrvlkqerv evikeonve voeq vweov weoi vowei vroiew vr wei v iowe v ev weov roew vroi", posterPath: "/w4c0GTpmEQ1CZQNHndTv2PPgf2p.jpg")
    }
}

extension Array<Movie> {
    static var mock: [Movie] {
        [
        Movie(id: 507086, title: "Jurrasic", overview: "For years rtc fsdvjsldf vsjakjvaelrfv aevjaleokrve rvkejrvoewirv wervjeowvjweovewrvlkqerv evikeonve voeq vweov weoi vowei vroiew vr wei v iowe v ev weov roew vroi", posterPath: "/w4c0GTpmEQ1CZQNHndTv2PPgf2p.jpg"),
        Movie(id: 799876, title: "The Outfit", overview: "For years rtc fsdvjsldf vsjakjvaelrfv aevjaleokrve rvkejrvoewirv wervjeowvjweovewrvlkqerv evikeonve voeq vweov weoi vowei vroiew vr wei v iowe v ev weov roew vroi", posterPath: "/1Za5EB6PVJBT5mxhgZS5ftqdAm6.jpg"),
        Movie(id: 810693, title: "Jutuju Kasien", overview: "For years rtc fsdvjsldf vsjakjvaelrfv aevjaleokrve rvkejrvoewirv wervjeowvjweovewrvlkqerv evikeonve voeq vweov weoi vowei vroiew vr wei v iowe v ev weov roew vroi", posterPath: "/3pTwMUEavTzVOh6yLN0aEwR7uSy.jpg")
        ]
    }
}
