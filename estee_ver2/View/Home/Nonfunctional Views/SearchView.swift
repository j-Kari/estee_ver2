//
//  SearchView.swift
//  estee_ver2
//
//  Created by Jahnavi Kari on 7/13/23.
//

import SwiftUI

struct SearchView: View {
    //properties
    
    @State public var searchText = ""
    @State private var hideSearch = false
    @State public var searchIsActive: Bool = true
    let names = ["Nutritious: 2-in-1 Foam Cleanser", "Nutritious: Radiant Essence Treatment Lotion", "Nutritious: Melting Soft Creme/Mask Moisturizer"]
    
    // body
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    hideSearch.toggle()
                }, label: {
                    Image(systemName: "chevron.right")
                        .font(.title)
                        .foregroundColor(space)
                }) // Button end
                .fullScreenCover(isPresented: $hideSearch, content: ContentView.init)
              /*  .sheet(isPresented: $hideSearch) {
                    ContentView()
                }*/
                .padding(.horizontal,40)
                //.padding(.top, 40)
            } //hstack end
            if searchIsActive == true {
                NavigationStack {
                    Text("Searching for \(searchText)")
                    //   .navigationTitle("Search")
                }
                .searchable(text: $searchText, prompt: "Nutritious")
            }
            else {
                ContentView()
            }
        } //vstack end
    } // SEARCH BAR BUT UNABLE TO DO ANYTHING ELSE. CLICK THE CHEVRON TO GO BACK TO THE HOME PAGE

    var searchResults: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.contains(searchText) }
        }
    }
}


struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView(/*isPresented: true*/)
    }
}

/*
 Button(action: {
     showSearch.toggle()
 }, label: {
     Image(systemName: "magnifyingglass")
         .font(.title)
         .foregroundColor(.black)
 }) // Button end
 .sheet(isPresented: $showSearch) {
     SearchView()
 }
 
 Button(action: {
     withAnimation(.easeIn) {
         feedback.impactOccurred()
         shop.selectedProduct = nil
         shop.showingProduct = false
     }
 }, label: {
     Image(systemName: "chevron.left")
         .font(.title)
         .foregroundColor(.white)
 })
 }*/
