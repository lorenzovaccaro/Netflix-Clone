//
//  GlobalHelpers.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//

import Foundation
import SwiftUI

let exampleMovieOne = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string:"https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 1)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailURL: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 2, promotionHeadline: "Best Rated Show")
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string:"https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 3)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string:"https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 4, promotionHeadline: "New Episodes Coming Soon")
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string:"https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 5)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Luca", thumbnailURL: URL(string:"https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"], year: 2020, rating: "TV-MA", numberOfSeasons: 6, promotionHeadline: "Watch Season 6 Now")

let exampleMovies: [Movie] = [exampleMovieOne, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]


extension LinearGradient{
    static let blackOpacityGradient = LinearGradient(
        gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]),
        startPoint: .top,
        endPoint: .bottom)
}
