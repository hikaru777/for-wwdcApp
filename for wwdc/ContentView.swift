//
//  ContentView.swift
//  for wwdc
//
//  Created by 本田輝 on 2024/02/10.
//

import SwiftUI

struct ContentView: View {
    @State private var isOverlapping: Bool = false
    var body: some View {
        
        VStack {
            
            BlockTextAnimation(text: "This application allows you to see how information is passed from person to person.",
                               font: .custom("Avenir-Light", fixedSize: 20),
                               startTime: 1)
            BlockTextAnimation(text: "Let's see it in action.",
                               font: .title,
                               startTime: 1.3)
        }
        
        //        VStack {
        //
        //            BlockTextAnimation(text: "This application allows you to see how electricity is generated.",
        //                               font: .custom("Avenir-Light", fixedSize: 20),
        //                               startTime: 1)
        //            BlockTextAnimation(text: "Give it a try!",
        //                               font: .title,
        //                               startTime: 1.3)
        //            Sun(defaultLocation: CGPoint(x: 0, y: 0))
        //
        //        }
        //        .padding()
    }
}

#Preview {
    ContentView()
}
