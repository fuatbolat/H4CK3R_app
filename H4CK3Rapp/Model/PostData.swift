//
//  PostData.swift
//  H4CK3Rapp
//
//  Created by Fuat Bolat on 3.02.2024.
//

import Foundation

struct Results : Decodable{
    let hits : [Post]
    
}
struct Post : Decodable ,Identifiable{
    var id : String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
