//
//  SmallVerticalButton.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/18.
//

import SwiftUI

struct SmallVerticalButton: View {
    var text: String
    var isOnImage: String
    var isOffImage: String
    var isOn: Bool
    var imageName: String {
        if isOn {
            return isOnImage
        } else {
            return isOffImage
        }
    }
    var action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            VStack {
                Image(systemName: imageName)
                    .foregroundColor(.white)
                Text(text)
                    .foregroundColor(.white)
                    .font(.system(size: 14))
                    .bold()
            }
        }
    }
}

struct SmallVerticalButton_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
            SmallVerticalButton(
                text: "My List",
                isOnImage: "checkmark",
                isOffImage: "plus",
                isOn: true, action: {
                    
                })
        }
    }
}
