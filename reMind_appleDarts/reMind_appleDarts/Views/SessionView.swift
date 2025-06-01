//
//  SessionView.swift
//  reMind_appleDarts
//
//  Created by ryosuke on 2/6/2025.
//


import SwiftUI
import AVKit

struct VideoChatView: View {
    @State private var progress: Float = 0.6
    
    var body: some View {
        ZStack {
            // video
//            VideoPlayer(player: AVPlayer(url: videoURL))
//                .ignoresSafeArea()
            ///////            // UI
            VStack {
                // Progress
                VStack {
                    ProgressView(value: progress)
                        .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                        .background(Color.white.opacity(0.3))
                    Spacer()
                }
                .padding(.top, 20)
                .padding(.horizontal, 20)
                
                Spacer()
                
                // Text
                Text("Now. Tell me 3 things you hear")
                    .foregroundColor(.black)
                    .font(.system(size: 18, weight: .medium))
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 20)
                
                Spacer()
                
                // Button
                HStack {
                    // keyboard
                    Button(action: {}) {
                        Image(systemName: "keyboard")
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    // mic
                    Button(action: {}) {
                        Image(systemName: "mic.fill")
                            .foregroundColor(.black)
                            .frame(width: 50, height: 50)
                            .background(Color.blue)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    // close
                    Button(action: {}) {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                    }
                    
                    // check
                    Button(action: {}) {
                        Image(systemName: "checkmark")
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .background(Color.white.opacity(0.2))
                            .clipShape(Circle())
                    }
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 30)
            }
        }
    }
    
//    // sample video URL
//    private var videoURL: URL {
//        // ローカルファイルの場合
//        Bundle.main.url(forResource: "sample_video", withExtension: "mp4")!
//    }
}

struct VideoChatView_Previews: PreviewProvider {
    static var previews: some View {
        VideoChatView()
    }
}
