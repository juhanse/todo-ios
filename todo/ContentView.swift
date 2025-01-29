//
//  ContentView.swift
//  todo
//
//  Created by Julien Hanse on 24/01/2025.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = TaskViewModel()
    @State private var newTask = ""
    @State private var doesClose = false
    
    var body: some View {
        VStack(spacing: 16) {
                TaskView(emoji: "🏋️‍♀️", title: "Workout", color: .pink, onButtonTap: {
                    print("Workout tapped")
                })
                TaskView(emoji: "📖", title: "Read", color: .blue, onButtonTap: {
                    print("Workout tapped")
                })
                TaskView(emoji: "💻", title: "Programming", color: .green, onButtonTap: {
                    print("Workout tapped")
                })
                TaskView(emoji: "🛍️", title: "Shopping", color: .yellow, onButtonTap: {
                    print("Workout tapped")
                })
        } .padding()
    }
}

#Preview {
    ContentView()
}
