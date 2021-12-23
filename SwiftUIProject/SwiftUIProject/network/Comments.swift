//
//  Comments.swift
//  SwiftUIProject
//
//  Created by Paulo H.M. on 22/12/21.
//

import SwiftUI

//"postId": 1,
//    "id": 1,
//    "name": "id labore ex et quam laborum",
//    "email": "Eliseo@gardner.biz",
//    "body": "laudantium enim quasi est quidem magnam voluptate ipsam eos\ntempora quo necessitatibus\ndolor quam autem quasi\nreiciendis et nam sapiente accusantium"
//  },

struct Comments : Identifiable, Codable{
    var id: Int
    let postId : Int
    let name : String
    let email : String
    let body : String
}
