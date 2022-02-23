//
//  CustomTabSwitcher.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/02/20.
//

import SwiftUI

struct CustomTabSwitcher: View {
    @State private var currentTab: CustomTab = .episodes
    var tabs: [CustomTab]
    
    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(tabs, id: \.self) { tab in
                        VStack {
                            Rectangle()
                                .frame(width: widthForTab(tab), height: 6)
                                .foregroundColor(tab == currentTab ? .red : .clear)
                            Button {
                                currentTab = tab
                            } label: {
                                Text(tab.rawValue)
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(tab == currentTab ? .white : .gray)
                            }
                            .frame(width: widthForTab(tab), height: 30)
                        }
                    }
                }
            }
            switch currentTab {
            case .episodes:
                SmallVerticalButton(text: "TEST", isOnImage: "", isOffImage: "", isOn: true) {
                    
                }
            case .trailers:
                Text("Trailers")
            case .more:
                Text("MORE")
            }
        }
        .foregroundColor(.white)
    }
    
    func widthForTab(_ tab: CustomTab) -> CGFloat {
        let string = tab.rawValue
        return string.widthOfString(usingFont: .systemFont(ofSize: 16, weight: .bold))
    }
}

enum CustomTab: String {
    case episodes = "EPISODES"
    case trailers = "TRAILERS & MORE"
    case more = "MORE LIKE THIS"
}

struct CustomTabSwitcher_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CustomTabSwitcher(tabs: [.episodes, .trailers, .more])
        }
    }
}
