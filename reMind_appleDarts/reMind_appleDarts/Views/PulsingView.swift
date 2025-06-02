////
////  PulsingView.swift
////  
////
////  Created by Tanvi on 30/5/2025.
////
//
//
//
//import SwiftUI
//import Lottie
//
////struct LottieView: UIViewRepresentable {
////    // 1️⃣ Tell SwiftUI that our UIViewType is Lottie’s AnimationView
////    typealias UIViewType = AnimationView
////    
////    // 2️⃣ (Coordinator is required by the protocol, even if you don’t use it)
////    class Coordinator { }
////    func makeCoordinator() -> Coordinator { Coordinator() }
////    
////    let animationName: String
////    var contentMode: UIView.ContentMode = .scaleAspectFit
////    var loopMode: LottieLoopMode = .loop
////
////    // 3️⃣ Create and configure the Lottie AnimationView
////    func makeUIView(context: Context) -> AnimationView {
////        let animationView = AnimationView(name: animationName)
////        animationView.contentMode = contentMode
////        animationView.loopMode = loopMode
////        animationView.play()
////        return animationView
////    }
////
////    // 4️⃣ Update logic, if you ever need to respond to changes
////    func updateUIView(_ uiView: AnimationView, context: Context) {
////        // No dynamic updates needed for a continuously looping animation
////    }
////}
//
//struct PulsingView: View {
//    var body: some View {
//        VStack {
//            // Embed the “Breathe.json” Lottie animation
//            LottieView(animationName: "Breathe")
//                .frame(width: 300, height: 300)  // Adjust to desired size
//        }
//        .padding()
//    }
//}
//
//#Preview {
//    PulsingView()
//}
//
