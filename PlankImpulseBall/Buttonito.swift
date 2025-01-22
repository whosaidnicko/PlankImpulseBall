//
//  Buttonito.swift
//  PlankImpulseBall
//
//  Created by Nicolae Chivriga on 22/01/2025.
//

import SwiftUI


struct Buttonito: View {
    @Environment(\.presentationMode) var dpresentedMode
    var body: some View {
        Button {
            dpresentedMode.wrappedValue.dismiss()
        } label: {
            ZStack {
                Rectangle()
                    .fill(Color.white.opacity(0.000001))
                    .frame(width: 50, height: 30)
                
                Text("BACK")
                    .foregroundColor(.white)
                    .font(.system(size: 20, weight: .bold, design: .monospaced))
            }
        }

        
    }
}
