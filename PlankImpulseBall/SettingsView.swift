//
//  SettingsView.swift
//  PlankImpulseBall
//
//  Created by Nicolae Chivriga on 22/01/2025.
//


import SwiftUI
import StoreKit

struct SettingsView: View {
    var body: some View {
        ZStack {
            Color.init(hex: "#9F7ACC")
                .ignoresSafeArea()
            
            Image("settings")
            Button {
                if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene {
                       SKStoreReviewController.requestReview(in: windowScene)
                   }
            } label: {
                ZStack {
                
                    
                    Image("rectBe")
                    
                    Text("Rate")
                        .foregroundColor(.white)
                        .font(.system(size: 30, weight: .bold, design: .monospaced))
                }
                
            }

           
        }
        .navigationBarBackButtonHidden()
        .navigationBarItems(leading: Buttonito())
    }
}
