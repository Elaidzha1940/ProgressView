//  /*
//
//  Project: ProgressView
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 05.10.2023
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        
        ZStack {
            Color.white
            
            Text("elid.ev")
                .font(.system(size: 40, weight: .bold, design: .rounded))
            
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .black))
                    .scaleEffect(3)
            }
            
        }
        .onAppear { startNetworkCall()
            
        }
    }
    
    func startNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false

        }
    }
}

#Preview {
    ContentView()
}
