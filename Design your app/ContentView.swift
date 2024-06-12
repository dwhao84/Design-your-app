//
//  ContentView.swift
//  Design your app
//
//  Created by Dawei Hao on 2024/6/12.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        // Add Angular Gradient effect
        ZStack {
            AngularGradient(
                colors: [
                    .red,
                    .teal,
                    .blue,
                    .black,
                    .indigo,
                    .red
                ],
                center: .center
            )
            
            // 變滿版
            .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    
                    // Joyful Button
                    Button(action: {
                        print("Showing Thankful Content")
                    }) {
                        Text("Thankful")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 180)
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                            )
                    }
                    .padding(40)
                    
                    // Joyful Button
                    Button (action: {
                        print("Showing Thankful Content")
                    }) {
                        Text("Joyful")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .backgroundStyle(.gray)
                            .frame(width: 300, height: 180)
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                            )
                    }
                    .padding(40)
                    
                    // Excited Button
                    Button(action: {
                        print("Showing Excited Content")
                    }) {
                        Text("Excited")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .controlSize(.large)
                            .frame(width: 300, height: 180)
                            .background(Color.white.opacity(0.4))
                            .cornerRadius(20)
                            .overlay(
                                RoundedRectangle(cornerRadius: 20)
                                    .stroke(Color.gray.opacity(0.3), lineWidth: 2)
                            )
                    }
                    .padding(40)
                }
                
                // Add ZStack in this view.
                ZStack {
                    Color.white.opacity(0.7)
                        .frame(width: 1070, height: 300)
                        .cornerRadius(20)
                    
                    Text(infomation.first?.content ?? "")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                }
                .frame(width: 600, height: 300)
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
