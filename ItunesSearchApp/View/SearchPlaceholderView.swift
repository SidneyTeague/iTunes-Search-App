//
//  SearchPlaceholderView.swift
//  ItunesSearchApp
//
//  
//

import SwiftUI

struct SearchPlaceholderView: View {
    @Binding var searchTerm: String
       let suggestions = ["umbrella", "star wars", "badsuns", "holiday"]
       
       var body: some View {
           VStack(spacing: 20) {
               
               Text("Trending")
                   .font(.title)
               ForEach(suggestions, id: \.self) { text in
                   Button {
                       searchTerm = text
                   } label: {
                       Text(text)
                           .font(.title2)
                   }

               }
               
           }
       }
   }

#Preview {
    SearchPlaceholderView(searchTerm: .constant("John"))
}
