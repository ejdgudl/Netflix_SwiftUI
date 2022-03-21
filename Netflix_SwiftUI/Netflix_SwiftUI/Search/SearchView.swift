//
//  SearchView.swift
//  Netflix_SwiftUI
//
//  Created by 김동현 on 2022/03/19.
//

import SwiftUI

struct SearchView: View {
    @ObservedObject var vm = SearchVM()
    @State private var searchText: String = ""
    @State private var movieDetialShow: Movie? = nil
    
    var body: some View {
        
        let searchTextBinding = Binding {
            return searchText
        } set: {
            searchText = $0
            vm.updateSearchText(with: $0)
        }
        
        return ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VStack {
                SearchBar(text: searchTextBinding, isLoading: $vm.isLoading)
                    .padding()
                ScrollView {
                    if vm.isShoingPopularMovies {
                        PopularList(movies: vm.popularMovies, movieDetailToShow: $movieDetialShow)
                    }
                    if vm.viewState == .empty {
                        Text("Yout search did not have any results.")
                            .bold()
                            .padding(.top, 150)
                    } else if vm.viewState == .ready && !vm.isShoingPopularMovies {
                        Text("Ready")
                    }
                }
                Spacer()
            }
            if movieDetialShow != nil {
                MovieDetail(movie: movieDetialShow!, movieDetailToShow: $movieDetialShow)
            }
        }
        .foregroundColor(.white)
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

struct PopularList: View {
    var movies: [Movie]
    @Binding var movieDetailToShow: Movie?
    
    var body: some View {
        VStack {
            HStack {
                Text("Popular Searches")
                    .bold()
                    .font(.title3)
                    .padding(.leading, 12)
                Spacer()
            }
            LazyVStack {
                ForEach(movies, id: \.id) { movie in
                    PopularMovieView(movieDetailShow: $movieDetailToShow, movie: movie)
                        .frame(height: 75)
                }
            }
        }
    }
}
