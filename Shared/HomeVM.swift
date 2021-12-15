//
//  HomeVM.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//
// Home View Model

import Foundation

class HomeVM: ObservableObject{
    
    // string == category
    @Published var movies: [String: [Movie]] = [:]
    
    public var allCategories: [String]{
        // like a for loop - for each key, initialize a string with it
        // basically transforming it into a string
        // could have the word return, but not needed
        movies.keys.map( {String($0)} )
    }
    
    init(){
        setupMovies()
    }
    
    func setupMovies(){
        movies["Trending Now"] = exampleMovies
        movies["Stand up"] = exampleMovies.shuffled()
        movies["Watch again"] = exampleMovies.shuffled()
        movies["Sci-Fi"] = exampleMovies.shuffled()
        movies["Life Sux"] = exampleMovies.shuffled()
    }
    
    func getMovieForCategory(forCategory category: String) -> [Movie]{
        return movies[category] ?? []
    }
}
