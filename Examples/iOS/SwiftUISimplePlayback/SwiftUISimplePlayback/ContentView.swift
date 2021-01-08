//
//  ContentView.swift
//  SwiftUISimplePlayback
//
//  Created by Hai Phan on 1/8/21.
//

import SwiftUI

struct ContentView: View {
    @State private var url: URL?

    var body: some View {
        VStack(spacing: 0) {
            VideoView(url: $url)
                .background(Color.gray)
            if url == nil {
                Button("Play") { url = URL(string: "https://streams.videolan.org/streams/mp4/Mr_MrsSmith-h264_aac.mp4") }
            }
            else {
                Button("Stop") { url = nil }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
