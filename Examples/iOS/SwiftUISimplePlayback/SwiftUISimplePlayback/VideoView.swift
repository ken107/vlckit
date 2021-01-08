//
//  VideoView.swift
//  SwiftUISimplePlayback
//
//  Created by Hai Phan on 1/8/21.
//

import SwiftUI
import MobileVLCKit

struct VideoView: UIViewRepresentable {

    @Binding var url: URL?
    @State var mediaPlayer = VLCMediaPlayer()

    typealias UIViewType = UIView

    func makeUIView(context: Context) -> UIView {
        let uiView = UIView()
        mediaPlayer.drawable = uiView
        return uiView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let url = url {
            mediaPlayer.media = VLCMedia(url: url)
            mediaPlayer.play()
        }
        else {
            mediaPlayer.stop()
        }
    }
}
