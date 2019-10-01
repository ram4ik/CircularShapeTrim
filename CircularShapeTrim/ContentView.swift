//
//  ContentView.swift
//  CircularShapeTrim
//
//  Created by ramil on 01/10/2019.
//  Copyright © 2019 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var circularProgress: CGFloat = 1.0
    private var circularPercentage: Int { Int(circularProgress * 100.0)}
    var body: some View {
        VStack(spacing: 40) {
            Text("Circular Shapes").font(.largeTitle)
            Text("Trim Function").font(.title).foregroundColor(.gray)
            Text("Trim your shape to only show a percentage of it.")
            
            Circle()
                .trim(from: 0, to: circularProgress)
                .stroke(Color.purple, style: StrokeStyle(lineWidth: 40, lineCap: CGLineCap.round))
                .frame(height: 300)
                .rotationEffect(.degrees(-90))
                .overlay(Text("\(circularPercentage)%")
                .font(.largeTitle)
                .foregroundColor(.gray)
                .padding(40))
            
            VStack {
                Text("Progress")
                HStack {
                    Text("0%")
                    Slider(value: $circularProgress)
                    Text("!00%")
                }
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
