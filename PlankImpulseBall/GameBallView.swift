//
//  GameBallView.swift
//  PlankImpulseBall
//
//  Created by Nicolae Chivriga on 22/01/2025.
//

import SwiftUI

struct GameBallView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#9F7ACC")
                .ignoresSafeArea()
            
            Text("Loading...")
                .foregroundColor(.white)
            .font(.system(size: 30, weight: .bold, design: .monospaced))
            
            WKWebViewRepresentable(url: URL(string: "https://plays.org/game/impulse-ball-2/")!)
                
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Buttonito())
    }
}


