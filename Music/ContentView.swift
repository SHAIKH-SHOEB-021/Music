//
//  ContentView.swift
//  Music
//
//  Created by shoeb on 21/12/22.
//

import SwiftUI

struct ContentView: View {
    @State private var playStatus : String = "Not playing"
    @State private var isPlaying: Bool = false
    var body: some View {
        VStack{
            Image(systemName: "music.note")
                .resizable()
                .frame(width: 300, height: 300, alignment: .topLeading)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(15.0)
            
            Text(self.playStatus)
                .font(.title)
                .frame(maxWidth: 350, alignment: .leading)
                .padding(30)
            
            HStack(alignment: .center, spacing: 60){
                Button(action:{
                    debugPrint("Backward button tapped")
                }){
                    Image(systemName: "backward")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
                
                Button(action:{
                    self.isPlaying.toggle()
                    self.playStatus = self.isPlaying ? "Playing" : "Not playing"
                }){
                    Image(systemName: self.isPlaying ? "pause" : "play")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
                
                Button(action:{
                    debugPrint("Forward button tapped")
                }){
                    Image(systemName: "forward")
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .center)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
