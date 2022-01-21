//
//  TopMoviePreview.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/16/21.
//
// we have image, hstack of categories, and hstack of 3 buttons

import SwiftUI
import Kingfisher

struct TopMoviePreview: View {
    
    var movie: Movie
    
    func isCategoryLast(_ category: String) -> Bool{
        let categoryCount = movie.categories.count
        if let index = movie.categories.firstIndex(of: category){
            if (index + 1 != categoryCount){
                return false
            }
        }
        return true
    }
    
    var body: some View {
        ZStack{
            KFImage(movie.thumbnailURL)
                .resizable()
                .scaledToFill()
                .clipped()
            
            VStack{
                Spacer()
                HStack{
                    ForEach(movie.categories, id: \.self) { category in
                        HStack{
                            Text(category)
                                .font(.footnote)
                            if (!isCategoryLast(category)){
                                Image(systemName: "circle.fill")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 3))
                            }
                        }
                        
                    }
                }
                HStack{
                    
                    // we do want more padding in the front and end
                    //but will focus on that later
                    Spacer()
                    
                    SmallVerticalButton(text: "My List", isOnImage: "checkmark", isOffImage: "plus", isOn: false) {
                        // add movie to list
                        // change image
                        
                    }
                    
                    Spacer()
                    
                    WhiteButton(imageName: "play.fill", text: "Play") {
                        // action
                    }
                    .frame(width: 120)
                    
                    Spacer()
                    
                    SmallVerticalButton(text: "Info", isOnImage: "info.circle", isOffImage: "info.circle", isOn: true) {
                        // show info
                        
                    }
                    
                    Spacer()
                }
            }
            .background(
                LinearGradient.blackOpacityGradient
                    .padding(.top, 250)
            )
            
        }
        .foregroundColor(.white)
    }
}

struct TopMoviePreview_Previews: PreviewProvider {
    static var previews: some View {
        TopMoviePreview(movie: exampleMovieOne)
    }
}
