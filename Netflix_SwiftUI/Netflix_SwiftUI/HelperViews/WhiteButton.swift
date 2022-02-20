//
//  WhiteButton.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/19.
//

import SwiftUI

struct WhiteButton: View {
    
    var text: String
    var imageName: String
    var action: () -> Void
    
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Image(systemName: imageName)
                    .font(.headline)
                Text(text)
                    .bold()
                    .font(.system(size: 16))
                Spacer()
            }
            .padding(.vertical, 6)
            .foregroundColor(.black)
            .background(.white)
            .cornerRadius(3.0)
        }
    }
}

struct WhiteButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black.edgesIgnoringSafeArea(.all)
            WhiteButton(text: "Play", imageName: "play.fill", action: {
                
            })
        }
    }
}
