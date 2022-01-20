//
//  HomeView.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 12/14/21.
//

import SwiftUI

struct HomeView: View {
    
    var vm = HomeVM()
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack{
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            // main v stack
            // lazy - only render views that will be on the screen
            // similar to reusing views on table view
            // as the user scrolls then you are initializing and making
            // the request right before the user needs it
            ScrollView(showsIndicators: false) {
                LazyVStack {
                    
                    TopMoviePreview(movie: exampleMovieOne)
                        .frame(width: screen.width)
                        .padding(.top, -60)
                    
                    ForEach(vm.allCategories, id: \.self) { category in
                        VStack {
                            HStack {
                                Text(category)
                                    .font(.title3)
                                    .bold()
                                Spacer()
                            }
                            
                            ScrollView(.horizontal, showsIndicators: false){
                                // only load images that will be on screen
                                LazyHStack{
                                    ForEach(vm.getMovieForCategory(forCategory: category)){ movie in StandardHomeMovie(movie: movie)
                                            .frame(width: 100, height: 200)
                                            .padding(.horizontal, 20)
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
