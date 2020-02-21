//
//  ContentView.swift
//  ObservableObjectSwiftUI
//
//  Created by Developer on 21.02.2020.
//  Copyright © 2020 Darya Kuliashova. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var timer = FancyTimer()
    @State var isStarted = false
    
    var body: some View {
        VStack {
            StartButton(isStarted: $isStarted)
                .font(.title)
                .foregroundColor(.green)
                .padding()
            
            Text(isStarted ? "\(timer.time - 1)" : "0")
                .font(.largeTitle)
        }
    }
}

struct StartButton: View {
    @Binding var isStarted: Bool
    
    var body: some View {
        Button(action: {
            self.isStarted = true
        }) {
            Text("Start")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
