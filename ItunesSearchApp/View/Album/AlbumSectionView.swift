//
//  AlbumSectionView.swift
//  ItunesSearchApp
//
//
//

import SwiftUI

struct AlbumSectionView: View {
    let albums: [Album]
       
       var body: some View {
           ScrollView(.horizontal) {
               LazyHStack(alignment: .top) {
                   ForEach(albums) { album in
                       
                       VStack(alignment: .leading) {
                           ImageLoadingView(urlString: album.artworkUrl100, size: 100)
                           Text(album.collectionName)
                           Text(album.artistName)
                               .foregroundColor(Color.gray)
                       }
                       .lineLimit(2)
                       .frame(width: 100)
                       .font(.caption)
                   }
               }
               .padding([.horizontal, .bottom])
               
           }
       }
   }

struct AlbumColumnView: View {
    let album: Album
    
    var body: some View {
        VStack(alignment: .leading) {
            ImageLoadingView(urlString: album.artworkUrl100, size: 100)
            Text(album.collectionName)
            Text(album.artistName)
                .foregroundColor(Color.gray)
        }
        .lineLimit(2)
        .frame(width: 100)
        .font(.caption)
    }
}
#Preview {
    AlbumSectionView(albums: [Album.example()])
}
