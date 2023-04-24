//
//  ContentView.swift
//  Navigation
//
//  Created by scholar on 4/24/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack{
                Text("This is the root view 🌳")
                    .font(.title)
                    .toolbar{
                            NavigationLink(destination: SecondViewNav()){
                                Text("Second view")
                        }
                }
                Text("Click below for another view in the root")
                NavigationView{
                    NavigationLink(destination: Text("Love your ourfit today!")){
                        Text("Click here!")
                            .tint(.red)
                            .font(.title2)
                    }
                }
            }
            .padding()
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarHidden(false)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
