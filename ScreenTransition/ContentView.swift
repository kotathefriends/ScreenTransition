//
//  ContentView.swift
//  ScreenTransition
//
//  Created by KOTA TAKAHASHI on 2023/10/14.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    
    // ハプティックフィードバックを生成する関数
        func generateHapticFeedback() {
            let generator = UIImpactFeedbackGenerator(style: .rigid)
            generator.impactOccurred()
        }
    
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Navigation transition to second view 😆")
                }

                Button("Modal transition to second view  😆") {
                    generateHapticFeedback()  // ボタンがタップされたときにハプティックフィードバックを生成
                    isShowSecondView = true
                }
                .padding()
                .sheet(isPresented: $isShowSecondView) {
                    SecondView()
                       // .presentationDetents([.medium])
                }
            }
            .padding()
            .navigationTitle("Screen 1")
        }
    }
}

#Preview {
    ContentView()
}
