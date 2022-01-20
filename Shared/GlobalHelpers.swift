//
//  GlobalHelpers.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//

import Foundation

let exampleMovieOne = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string:"https://picsum.photos/200/300")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailURL: URL(string:"https://picsum.photos/200/301")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string:"https://picsum.photos/200/302")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string:"https://picsum.photos/200/303")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string:"https://picsum.photos/200/304")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Luca", thumbnailURL: URL(string:"https://picsum.photos/200/305")!, categories: ["Dystopian", "Exciting", "Suspenseful", "Sci-Fi"])

let exampleMovies: [Movie] = [exampleMovieOne, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
