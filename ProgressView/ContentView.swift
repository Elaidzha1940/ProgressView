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
            Text("elid.ev")
                .font(.system(size: 40, weight: .bold, design: .rounded))
        
            if isLoading {
                LoadingView()
            }
        }
        .onAppear { startNetworkCall()
            
        }
    }
    
    func startNetworkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) {
            isLoading = false
            
        }
    }
}

#Preview {
    ContentView()
}

struct LoadingView: View {
    var body: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ProgressView()
                .progressViewStyle(CircularProgressViewStyle(tint: .white))
                .scaleEffect(3)
        }
    }
}
