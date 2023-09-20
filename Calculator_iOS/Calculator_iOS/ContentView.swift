//
//  ContentView.swift
//  Calculator_iOS
//
//  Created by Abhishek Vasudev on 20/09/23.
//

import SwiftUI
import Calculator

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            let test = Calculator()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
