//
//  Movie.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/15/21.
//
// Model Object

import Foundation

struct Movie: Identifiable{
    var id: String
    var name: String
    var thumbnailURL: URL
    var categories: [String]
}