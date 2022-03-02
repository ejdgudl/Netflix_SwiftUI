//
//  EpisodeView.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/02.
//

import SwiftUI

struct EpisodeView: View {
    var episodes: [Episode]
    let screen = UIScreen.main.bounds
    
    @Binding var showSeasonPicker: Bool
    @Binding var selectedSeason: Int
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    showSeasonPicker = true
                } label: {
                    Group {
                        Text("Season 1")
                        Image(systemName: "chevron.down")
                    }
                    .font(.system(size: 16))
                }
                Spacer()
            }
            ForEach(getEpisodes(for: selectedSeason)) { episode in
                Text("aa")
            }
            Spacer()
        }
        .foregroundColor(.white)
    }
    
    func getEpisodes(for season: Int) -> [Episode] {
        return episodes.filter { $0.season == season }
    }
}

struct EpisodeView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            EpisodeView(episodes: allExampleEpisodes, showSeasonPicker: .constant(false), selectedSeason: .constant(1))
        }
    }
}
