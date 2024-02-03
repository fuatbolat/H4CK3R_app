//
//  ContentView.swift
//  H4CK3Rapp
//
//  Created by Fuat Bolat on 3.02.2024.
//

import SwiftUI




struct ContentView: View {
    @ObservedObject var networkManager = NetworkManager()
   
    var body: some View {
        NavigationView{
            VStack {
                List(networkManager.posts){ post in
                    HStack{
                        NavigationLink (destination : DetailView(url: post.url)){
                            Text(String(post.points))
                            Text(post.title)
                        }

                    }
                    
                }
                
            }.navigationTitle("H4CK3R")
            .onAppear(){
                self.networkManager.fetchData()
            }
        }
        
    }
}

/*#Preview {
    ContentView()
}*/
