//
//  ContentView.swift
//  MinorKB86
//
//  Created by Julian van Beek on 28/08/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView() {
            VStack(alignment: .leading) {
                HStack {
                    Tile(title: "Blok 1", description: "Designing an App", color: Color.pink)
        
                    Tile(title: "Blok 2", description: "Learn React Native", color: Color.green)
                }
                .padding(.vertical, 2)
                
                HStack {
                    Tile(title: "Blok 3", description: "Learn Swift", color: Color.blue)
                }
            }
            .navigationTitle("Minor KB86")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Tile: View {
    var title: String
    var description: String
    var color: Color
    
    var body: some View {
        
        NavigationLink(destination: DetailView(title: title, description: description)) {
            VStack {
                Text(title)
                    .font(.title)
                Text(description)
            }
            .frame(width: 190, height: 240)
            .foregroundColor(.white)
            .background(color)
            .cornerRadius(20)
        }
    }
}
