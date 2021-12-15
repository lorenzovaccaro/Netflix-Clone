//
//  StandardHomeMovie.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//
// king fisher automatically caches this image

import SwiftUI
import Kingfisher

struct StandardHomeMovie: View {
    var movie: Movie
    
    
    var body: some View {
        KFImage(movie.thumbnailURL)
            .resizable()
            .scaledToFill()
    }
}

struct StandardHomeMovie_Previews: PreviewProvider {
    static var previews: some View {
        StandardHomeMovie(movie: exampleMovieOne)
    }
}
