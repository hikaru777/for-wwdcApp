//
//  oneLie.swift
//  for wwdc
//
//  Created by 本田輝 on 2024/02/10.
//

import SwiftUI

struct selectPathogen: View {
    @State var isStart: Bool = false
    @State var pathogenNunber: Int? = nil
    @State var humanPosition: CGPoint = CGPoint(x: 300, y: 390)
    var body: some View {
        ZStack {
            
            HStack {
                
                Image("human")
                    .resizable()
                    .frame(width: 700, height: 700)
                    .position(humanPosition)
                
                VStack {
                    
                    Button(action: {
                        isStart = true
                    }, label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                    })
                    .padding(.top, 10)
                    .padding(.trailing, 25)
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    selectPathogen()
}
