//
//  DetailView.swift
//  MinorKB86
//
//  Created by Julian van Beek on 28/08/2021.
//

import SwiftUI

struct DetailView: View {
    var title: String
    var description: String
    
    var body: some View {
        ScrollView() {
            VStack(alignment: .leading) {
                Image(title)
                    .resizable()
                    .frame(height: 200)
                Text(title)
                    .font(.title)
                Text(description)
                    .padding(.bottom, 4)
                    .foregroundColor(.secondary)
                
                switch(title) {
                case "Blok 1":
                    Blok1()
                case "Blok 2":
                    Blok2()
                case "Blok 3":
                    Blok3()
                default:
                    Text("Error")
                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(title: "Blok 1", description: "description")
    }
}

struct Blok1: View {
    var body: some View {
        VStack{
            Text("In het eerste blok van de minor ben ik mij bezig gaan houden met het ontwerpen van een mobiele app met behulp van design patterns. Allereerst ben ik aan de slag gegaan met uitzoeken welke patterns ik kan gebruiken en vooral hoe ik die kan gebruiken. Uiteindelijk ben ik tot een mooi ontwerp gekomen voor een app voor het bedrijf Barcelonete.")
        }
    }
}

struct Blok2: View {
    var body: some View {
        VStack{
            Text("In het tweede blok ben ik bezig geweest met het leerdoel react-native. Dit is een programmeer taal waar je mobiele apps kan maken voor ios en android. Zo is ook deze app gemaakt met react-native. Ik vond dit een lastig leerdoel, omdat ik nog geen ervaring had met React, maar uiteindelijk ben ik er toch uitgekomen.")
        }
    }
}

struct Blok3: View {
    var body: some View {
        VStack{
            Text("In het derde blok ben ik de taal swift gaan leren. Dit is een programmeertaal waar je apps kan maken op iOS Devices. Deze app is hier onder andere ook mee gemaakt. Ik vond het leuk en leerzaam om dit te volgen. Ook ben ik tevreden met de vele resultaten die ik heb dit blok.")
        }
    }
}
