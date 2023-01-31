//
//  MovieDetailsView.swift
//  temp
//
//  Created by Nick Pavlov on 1/30/23.
//

import SwiftUI

struct MovieDetailsView: View {
    
    let movie: Movie
    
    @State var cast: [MovieCastMember] = []
    
    var body: some View {
        
        List {
            Section {
                HStack {
                    AsyncImage(url: movie.posterURl) { image in
                        image
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                    } placeholder: {
                        ProgressView()
                    }
                    .frame(height: 220)
                    Text(movie.overview)
                        .lineLimit(10)
                }
            }
            
            ForEach(cast) { cast in
                VStack(alignment: .leading) {
                    Text(cast.character)
                    Text(cast.name)
                        .font(.caption)
                }
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationTitle(movie.title)
        .task {
            do {
                let service = CastService()
                cast = try await service.getCast(of: movie)
            } catch {}
        }
    }
}

struct MovieDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailsView(movie: .mock, cast: .mock)
    }
}
