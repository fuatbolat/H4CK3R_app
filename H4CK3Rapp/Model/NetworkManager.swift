//
//  NetworkManager.swift
//  H4CK3Rapp
//
//  Created by Fuat Bolat on 3.02.2024.
//

import Foundation

class NetworkManager : ObservableObject {
    
     @Published var posts = [Post]()
    func fetchData(){
        if let url = URL(string: "http://hn.algolia.com/api/v1/search?tags=front_page"){
            let session = URLSession(configuration: .default)
            let dataTask = session.dataTask(with: url) { data, response, error in
                if error == nil {
                    let decoder = JSONDecoder()
                    if let safeData = data {
                        do {
                            let results =  try decoder.decode(Results.self, from: safeData)
                            DispatchQueue.main.sync {
                                self.posts = results.hits
                            }
                        
                            
                        } catch{
                            print(error)
                        }
                    }
                }
                
            }
            dataTask.resume()
            
        }
    }
    
    
    
}
