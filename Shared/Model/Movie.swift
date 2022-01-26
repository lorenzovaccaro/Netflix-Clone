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
    
    // movie detail view
    var year: Int
    var rating: String
    var numberOfSeasons: Int?
    
    var numberOfSeasonsDisplay: String{
        if let num = numberOfSeasons{
            if num == 1{
                return "1 season"
            }else{
                return "\(num) seasons"
            }
        }
        
        return ""
    }
    
    
    var episodes: [Episode]?
    
    var promotionHeadline: String?
    
}
