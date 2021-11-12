//
//  ContentView.swift
//  Shared
//
//  Created by Tsabit Farel on 12/11/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var count = 0
    
    var body: some View {
        VStack {
            Text("You have counted: \(count)")
                .padding()
                .font(.largeTitle)
            
            HStack {
                Button(action: {
                    count = count + 1
                }) {
                    Text("Count +")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.blue)
                .shadow(radius: 5)
                .cornerRadius(8)
                Button(action: {
                    count = count - 1
                }) {
                    Text("Count -")
                        .foregroundColor(.white)
                }
                .padding()
                .background(Color.red)
                .shadow(radius: 5)
                .cornerRadius(8)
            }
            Button(action: {
                count = 0
            }) {
                Text("Reset")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
