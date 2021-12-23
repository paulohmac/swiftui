//
//  NetWork.swift
//  SwiftUIProject
//
//  Created by Paulo H.M. on 22/12/21.
//

import SwiftUI

class NetWork : ObservableObject{
    
    @Published var commets  = [Comments]()
    
    //Result enum to show success or failure
    enum Result<T> {
        case success(T)
        case failure(Error?)
    }
    
    init(){
        sendRequest()
    }
    

    func sendRequest(){
        let dataURL = URL(string: "https://jsonplaceholder.typicode.com/comments")! //change the url

        let session = URLSession.shared

        let request = URLRequest(url: dataURL, cachePolicy: .useProtocolCachePolicy, timeoutInterval: 60)

        let task = session.dataTask(with: request, completionHandler: { data, response, error in


            do {
                //create decodable object from data
                let decodedObject = try JSONDecoder().decode([Comments].self, from: data!)
                DispatchQueue.main.async {
                    self.commets = decodedObject
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })

        task.resume()
    }
}
