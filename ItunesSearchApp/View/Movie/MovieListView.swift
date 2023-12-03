//
//  MovieListView.swift
//  ItunesSearchApp
//
//
//

import SwiftUI
struct MovieListView: View {
    @ObservedObject var viewModel: MovieListViewModel
    
    var body: some View {
        
        List {
            ForEach(viewModel.movies) { movie in
                MovieRowView(movie: movie)
            }
            
            ListPlaceholderRowView(state: viewModel.state,
                                   loadMore: viewModel.loadMore)
        }
        .listStyle(.plain)
        
    }
}
#Preview {
    MovieListView(viewModel: MovieListViewModel())
}
