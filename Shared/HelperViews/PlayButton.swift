//
//  WhiteButton.swift
//  Netflix Clone
//
//  Created by Lorenzo Vaccaro on 1/20/22.
//

import SwiftUI

struct PlayButton: View {
    
    var imageName: String
    var text: String
    var backgroundColor: Color = Color.white
    
    
    
    
    
    var action: () -> Void
    
    var body: some View {
        Button {
            //action
            action()
        } label: {
            HStack{
                Spacer()
                
                Image(systemName: imageName)
                    .font(.headline)
                
                Text(text)
                    .font(.system(size: 16))
                    .bold()
                
                Spacer()
            }
            .padding(.vertical, 6)
            .background(backgroundColor)
            .foregroundColor(backgroundColor == .white ? .black : .white)
            .cornerRadius(3.0)
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            PlayButton(imageName: "play.fill", text: "Play", backgroundColor: .white){
                // action
            }
        }
    }
}
