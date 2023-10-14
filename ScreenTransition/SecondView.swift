//
//  SecondView.swift
//  ScreenTransition
//
//  Created by KOTA TAKAHASHI on 2023/10/14.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack {
            Color.green
                .ignoresSafeArea()
            Text("SecondView")
                .font(.title)
        }
    }
}

#Preview {
    SecondView()
}
