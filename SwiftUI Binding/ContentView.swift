//
//  ContentView.swift
//  SwiftUI Binding
//
//  Created by Developer on 19.02.2020.
//  Copyright © 2020 Darya Kuliashova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let podcast = Podcast(name: "THE REWATCHABLES", track: "‘The Breakfast Club’ With Bill Simmons, Chris Ryan, and Wesley Morris")
    
    @State private var isPlaying = false
    
    var body: some View {
        VStack {
            Text(podcast.name)
                .font(.title)
                .foregroundColor(isPlaying ? .green : .black)
            
            Text(podcast.track)
                .foregroundColor(.secondary)
                .padding()
                .multilineTextAlignment(.center)
            
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

struct PlayButton: View {
    @Binding var isPlaying: Bool
    
    var body: some View {
        Button(action: {
            self.isPlaying.toggle()
        }) {
            Text("Play Podcast")
        }.padding(12)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
