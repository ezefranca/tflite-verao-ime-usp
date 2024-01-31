//
//  ContentView.swift
//  tflite-verao-ime-usp
//
//  Created by Ezequiel dos Santos on 31/01/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: Aula1View()) {
                    Text("Open Aula 1")
                }
                .padding()

                NavigationLink(destination: Aula2View()) {
                    Text("Open Aula 2")
                }
                .padding()

                NavigationLink(destination: Aula3View()) {
                    Text("Open Aula 3")
                }
                .padding()

                NavigationLink(destination: Aula4View()) {
                    Text("Open Aula 4")
                }
                .padding()

                NavigationLink(destination: Aula5View()) {
                    Text("Open Aula 5")
                }
                .padding()
            }
        }
    }
}


#Preview {
    ContentView()
}
