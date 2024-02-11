//
//  WelcomView.swift
//  for wwdc
//
//  Created by 本田輝 on 2024/02/11.
//

import SwiftUI

struct WelcomView: View {
    @State var text: String = "Let's look at how cells work!"
    @State var isClear: Bool = false
    @State var show: Bool = false
    @State var play: Bool = false
    @State var size: CGFloat = 700
    var body: some View {
        ZStack {
            HStack {
                
                Image("human")
                    .resizable()
                    .frame(width: size, height: size)
                    .position(play ? CGPoint(x: 600, y: 390) : CGPoint(x: 300, y: 390))
                
                VStack {
                    
                    BlockTextAnimation(text: text,
                                       font: .system(size: 35, weight: .black, design: .default),
                                       startTime: 1.0)
                    .position(x: 170, y: 300)
                    .opacity(isClear ? 0 : 100)
                    
                    Button(action: {
                        withAnimation {
                            isClear = true
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                show = true
                            }
                        }
                    }, label: {
                        /*@START_MENU_TOKEN@*/Text("Button")/*@END_MENU_TOKEN@*/
                    })
                    .position(x: 170, y: 60)
                    .opacity(isClear ? 0 : 100)
                }
            }
            
            ZStack {
                
                if show {
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(.ultraThickMaterial)
                        .frame(width:400, height: 500)
                        .opacity(show ? 100 : 0)
                        .position(x: 800, y: 390)
                        .overlay {
                            Rectangle()
                                .frame(width: 400, height: 1)
                                .position(x: 800, y: 320)
                            Rectangle()
                                .frame(width: 400, height: 1)
                                .position(x: 800, y: 480)
                            Rectangle()
                                .frame(width: 500, height: 1)
                                .position(x: 592, y: 200)
                                .rotationEffect(.init(degrees: 90))
                        }
                        .opacity(show ? 100 : 0)
                    
                    Sun(defaultLocation: CGPoint(x: 695, y: 230))
                    Sun(defaultLocation: CGPoint(x: 695, y: 400))
                    Sun(defaultLocation: CGPoint(x: 695, y: 560))
                    Sun(defaultLocation: CGPoint(x: 900, y: 230))
                    Sun(defaultLocation: CGPoint(x: 900, y: 400))
                    Sun(defaultLocation: CGPoint(x: 900, y: 560))
                    
                }
            }
            
            HStack {
                Spacer()
                VStack {
                    
                    Button(action: {
                        show = false
                        withAnimation {
                            play = true
                            size = 10000
                        }
                    }, label: {
                        Image(systemName: "play.fill")
                            .resizable()
                            .frame(width: 100, height: 100)
                    })
                    .opacity(show ? 100 : 0)
                    .padding(.top, 10)
                    .padding(.trailing, 25)
                    
                    Spacer()
                }
                
            }
        }
    }
}

#Preview {
    WelcomView()
}
