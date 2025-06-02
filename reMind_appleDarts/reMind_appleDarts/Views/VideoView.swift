//
//  VideoView.swift
//  reMind_appleDarts
//
//  Created by ryosuke on 2/6/2025.
//

import SwiftUI
import AVKit


struct VideoView: View {
    @State var player: AVPlayer
    @State var isPlaying: Bool = false
    
    
    init() {
        if let url = Bundle.main.url(forResource: "sample_video", withExtension: "mp4") {
            _player = State(initialValue: AVPlayer(url: url))
        } else {
            _player = State(initialValue: AVPlayer()) // fallback for preview
            print("⚠️ Video file not found.")
        }
    }
    
    var body: some View {
        VStack {
            VideoPlayer(player: player)
                .frame(width: 320, height: 180, alignment: .center)

            Button {
                isPlaying ? player.pause() : player.play()
                isPlaying.toggle()
                player.seek(to: .zero)
            } label: {
                Image(systemName: isPlaying ? "stop" : "play")
                    .padding()
            }
        }
    }
}

#Preview {
    VideoView()
}


