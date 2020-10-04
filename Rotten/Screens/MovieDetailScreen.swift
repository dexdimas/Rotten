//
//  MovieDetailScreen.swift
//  Rotten
//
//  Created by Andimas Bagaswara on 04/10/20.
//

import SwiftUI

struct MovieDetailScreen: View {
    
    @ObservedObject var movieDetailVM = MovieDetailViewModel()
    let imdbId: String
    
    var body: some View {
        VStack {
            
            if self.movieDetailVM.loadingState == .loading {
                LoadingView()
            } else if self.movieDetailVM.loadingState == .success {
                MovieDetailView(movieDetailVM: movieDetailVM)
            } else if self.movieDetailVM.loadingState == .failed {
                FailedView()
            }
        }
        .onAppear {
            self.movieDetailVM.getDetailsByImdbId(imdbId: self.imdbId)
        }
    }
}
