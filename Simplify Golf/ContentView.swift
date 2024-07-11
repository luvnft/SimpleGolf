//
//  ContentView.swift
//  Simplify Golf
//
//  Created by Jayson Dasher on 5/15/24.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var courseManager = CourseManager()
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: StartRoundView()) {
                    Label("Start Round", systemImage: "play")
                }
                NavigationLink(destination: Text("Past Rounds")) {
                    Label("Past Rounds", systemImage: "list.bullet")
                }
                NavigationLink(destination: Text("Statistics")) {
                    Label("Statistics", systemImage: "chart.bar")
                }
                NavigationLink(destination: Text("Handicap Index")) {
                    Label("Handicap Index", systemImage: "number")
                }
            }
            .navigationTitle("Simplify Golf")
        }
        .environmentObject(courseManager)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
