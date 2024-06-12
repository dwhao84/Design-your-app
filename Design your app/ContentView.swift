//
//  ContentView.swift
//  Design your app
//
//  Created by Dawei Hao on 2024/6/12.
//

import SwiftUI

struct ContentView: View {
    
    @State private var textContent: String = "Switch Content after tap the different button"
    
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
                        
                        textContent = infomation[0].content
                        
                    }) {
                        Text("Thankful")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .frame(width: 300, height: 180)
                            .background(
                                LinearGradient(
                                    gradient: .init(colors: [Color.white, Color.blue.opacity(0.7)]),
                                    startPoint: .init(x: -0.33, y: -0.33),
                                    endPoint: .init(x: 0.66, y: 0.66)
                                ))
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
                        
                        textContent = infomation[1].content
                        
                    }) {
                        Text("Joyful")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .backgroundStyle(.gray)
                            .frame(width: 300, height: 180)
                            .background(
                                LinearGradient(
                                    gradient: .init(colors: [Color.white, Color.blue.opacity(0.7)]),
                                    startPoint: .init(x: -0.33, y: -0.33),
                                    endPoint: .init(x: 0.66, y: 0.66)
                                ))
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
                        
                        textContent = infomation[2].content
                    
                        
                    }) {
                        Text("Excited")
                            .font(.largeTitle)
                            .fontWeight(.semibold)
                            .foregroundStyle(.white)
                            .controlSize(.large)
                            .frame(width: 300, height: 180)
                            .background(
                                LinearGradient(
                                    gradient: .init(colors: [Color.white, Color.blue.opacity(0.7)]),
                                    startPoint: .init(x: -0.33, y: -0.33),
                                    endPoint: .init(x: 0.66, y: 0.66)
                                ))
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
                    Text(textContent)
                        .font(.largeTitle).bold()
                        .fontWeight(.semibold)
                        .frame(width: 1070, height: 300)
                        .background(
                            LinearGradient(
                                gradient: .init(colors: [Color.white.opacity(0.8), Color.blue.opacity(0.7)]),
                            startPoint: .init(x: -0.33, y: -0.33),
                            endPoint: .init(x: 0.66, y: 0.66)
                        ))
                        .cornerRadius(20)
                }
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
