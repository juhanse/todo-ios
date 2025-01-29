//
//  task.swift
//  todo
//
//  Created by Julien Hanse on 26/01/2025.
//

import SwiftUI

struct TaskView: View {
    var emoji: String
    var title: String
    var color: Color
    var onButtonTap: () -> Void

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                Circle()
                    .stroke(Color.gray.opacity(0.4), lineWidth: 3)
                        .frame(width: 68, height: 68)
                Circle()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(colors: [color.opacity(0.6), color]),
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .frame(width: 60, height: 60)
                
                Text(emoji)
                    .font(.system(size: 30))
            }

            // Title
            Text(title)
                .font(.system(size: 22))
                .fontWeight(.bold)
                .foregroundColor(.black)

            Spacer()

            // Button
            Button(action: onButtonTap) {
                Text("Go")
                    .font(.subheadline)
                    .foregroundColor(.white)
                    .padding(.horizontal, 20)
                    .padding(.vertical, 8)
                    .background(Gradient(colors: [Color.green.opacity(0.8), Color.green]))
                    .cornerRadius(8)
            }
        }
        .padding()
        .background(Color.white)
        .cornerRadius(20)
        .shadow(color: .gray.opacity(0.4), radius: 8, x: 0, y: 4)
    }
}
