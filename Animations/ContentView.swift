//
//  ContentView.swift
//  Animations
//
//  Created by Micah Jesse Njeru on 26/05/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var dragAmount = CGSize.zero
    
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .top,
                       endPoint: .bottomTrailing)
        .frame(width: 300, height: 200)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .offset(dragAmount)
        .gesture(
        DragGesture()
            .onChanged { dragAmount = $0.translation }
            .onEnded { _ in
                withAnimation {
                    dragAmount = .zero }
            }
        )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
