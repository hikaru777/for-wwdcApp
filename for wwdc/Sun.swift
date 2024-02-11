//
//  Sun.swift
//  for wwdc
//
//  Created by 本田輝 on 2024/02/10.
//

import Foundation
import SwiftUI

struct Sun: View {
    @State private var location: CGPoint
    @State var defaultLocation: CGPoint
    @State private var isDragging = false
    @State var color: Color = .orange
    init(defaultLocation: CGPoint) {
        self.location = defaultLocation
        self.defaultLocation = defaultLocation
    }
    
    /// Drag Gesture
    var dragGesture: some Gesture {
        DragGesture()
            .onChanged { value in
                location = value.location
                isDragging = true
            }
            .onEnded { _ in
                isDragging = false
                location = defaultLocation
            }
    }
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100)
            .position(location)
            .gesture(dragGesture)
    }
}
