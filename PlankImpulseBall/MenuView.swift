//
//  MenuView.swift
//  PlankImpulseBall
//
//  Created by Nicolae Chivriga on 22/01/2025.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#9F7ACC")
                .ignoresSafeArea()
            
            VStack {
                Image("logotip")
                
                NavigationLink {
                    GameBallView()
                } label: {
                    Image("play")
                }
                .padding(.top, 100)
                
                HStack(spacing: 73) {
                    NavigationLink {
                        InfoView()
                    } label: {
                        Image("info")
                    }
                    
                    NavigationLink {
                        SettingsView()
                    } label: {
                        Image("settins")
                    }

                }
                .padding(.top, 50)

                Spacer()
            }
        }
    }
}
extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (1, 1, 1, 0)
        }

        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue:  Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}
