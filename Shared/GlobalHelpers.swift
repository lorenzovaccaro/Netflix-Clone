//
//  GlobalHelpers.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//

import Foundation

let exampleMovieOne = Movie(id: UUID().uuidString, name: "DARK", thumbnailURL: URL(string:"https://picsum.photos/200/300")!)
let exampleMovie2 = Movie(id: UUID().uuidString, name: "Travellers", thumbnailURL: URL(string:"https://picsum.photos/200/301")!)
let exampleMovie3 = Movie(id: UUID().uuidString, name: "Community", thumbnailURL: URL(string:"https://picsum.photos/200/302")!)
let exampleMovie4 = Movie(id: UUID().uuidString, name: "Hannibal", thumbnailURL: URL(string:"https://picsum.photos/200/303")!)
let exampleMovie5 = Movie(id: UUID().uuidString, name: "Afterlife", thumbnailURL: URL(string:"https://picsum.photos/200/304")!)
let exampleMovie6 = Movie(id: UUID().uuidString, name: "Luca", thumbnailURL: URL(string:"https://picsum.photos/200/305")!)

let exampleMovies: [Movie] = [exampleMovieOne, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]
