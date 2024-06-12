#  Design your App

Main task:
This practice is from Apple's learning center [Design your App](https://education.apple.com/learning-center/T049524A).

And using SwiftUI to build a completely project.

### ContentView:
<p align="center">
<img src="https://github.com/dwhao84/Design-your-app/blob/8bae87c2cb734044b10cf69c385994783117e799/Design%20your%20app/Assets.xcassets/Design%20My%20App_Animation.dataset/Design%20My%20App_Animation.gif" width="810" height="600"/>
</p> 

### Show different result by tapping each buttons.

I created three different buttons(Thankful, Excited, Joyful) to switching between different text contents.

By tapping each button, the text content will display a different result.

```
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
```

### Shows the gardientColor in background by using ZStack.

<p align="center">
<img src="https://github.com/dwhao84/Design-your-app/blob/8bae87c2cb734044b10cf69c385994783117e799/Design%20your%20app/Assets.xcassets/Design%20My%20App_Screen%20shot.imageset/Design%20My%20App_Screen%20shot.png" width="810" height="600"/>
</p> 

```
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
```


### Show content after the tapping different buttons 

```
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
```

### Data.swift:

Create the information data array for switch different content.

```
import Foundation
import SwiftUI

struct Info {
    let content: String
}

let infomation: [Info] = [
    Info(content: "I am thankful for the support of my family and friends."),
    Info(content: "Feeling excited about the new opportunities ahead."),
    Info(content: "Joyful moments are often found in the simplest things."),
    Info(content: "Grateful for the kindness of strangers."),
    Info(content: "Excited to start a new chapter in my life.")
]
```



