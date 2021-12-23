//
//  ContentView.swift
//  SwiftUIProject
//
//  Created by Paulo H.M. on 22/12/21.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var netWork = NetWork()
    
    var body: some View {
        List(netWork.commets){ comment in
            VStack{
                Text(comment.email  )
                    .font(.headline)
                    .padding()
                Text(comment.name  )
                    .font(.body)
                    .padding()
                Text(comment.body  )
                    .font(.body)
                    .padding()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
