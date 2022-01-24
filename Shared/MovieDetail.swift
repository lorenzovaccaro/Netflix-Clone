//
//  MovieDetail.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 1/24/22.
//

import SwiftUI

struct MovieDetail: View {
    
    var movie: Movie
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black.edgesIgnoringSafeArea(.all)
            
            VStack{
                
                HStack{
                    
                    Spacer()
                    
                    Button {
                        
                    } label: {
                        // close view
                        Image(systemName: "xmark.circle")
                            .font(.system(size: 28))
                    }
                }
                .padding(.horizontal, 22)
                
                ScrollView(.vertical, showsIndicators: false) {
                    VStack{
                        StandardHomeMovie(movie: movie)
                            .frame(width: screen.width / 2.5)
                        
                        MovieInfoSubheadline()
                    }
                }
                
                Spacer()
            
            }
        }
        .foregroundColor(.white)
    }
}

struct MovieDetail_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetail(movie: exampleMovie3)
    }
}

struct MovieInfoSubheadline: View {
    var body: some View {
        HStack{
            Image(systemName: "hand.thumbsup.fill")
                .foregroundColor(.white
                )
            Text("Movie Year")
            Text("Rating")
            Text("# of Season")
            
        }
        .foregroundColor(.gray)
        .padding(.vertical, 6)
    }
}
