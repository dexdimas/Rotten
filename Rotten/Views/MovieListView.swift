//
//  MovieListView.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 03/10/20.
//

import SwiftUI

struct MovieListView: View {
    
    let movies: [MovieViewModel]
    
    var body: some View {
        List(self.movies, id: \.imdbId) { movie in
            MovieCell(movie: movie)
            Spacer()
        }.contentShape(Rectangle())
    }
}

struct MovieCell: View {
    
    let movie: MovieViewModel
    
    var body: some View {
        HStack(alignment: .top, content: {
            URLImage(url: movie.poster)
                .frame(width: 100, height: 120)
                .cornerRadius(6)
            VStack(alignment: .leading, content: {
                Text(movie.title)
                    .font(.headline)
                Text(movie.year)
                    .opacity(0.5)
                    .padding(.top, 10)
            })
            .padding(5)
        })
    }
}
