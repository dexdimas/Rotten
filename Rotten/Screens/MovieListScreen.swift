//
//  MovieListScreen.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 03/10/20.
//

import SwiftUI

struct MovieListScreen: View {
    
    @ObservedObject private var movieListVM: MovieListViewModel
    
    init() {
        self.movieListVM = MovieListViewModel()
        self.movieListVM.searchByName("power")
    }
    
    var body: some View {
        VStack {
            MovieListView(movies: self.movieListVM.movies)
                .navigationTitle("Movies")
        }.embedNavigationView()
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
