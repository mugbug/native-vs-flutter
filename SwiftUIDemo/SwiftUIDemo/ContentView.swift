//
//  ContentView.swift
//  SwiftUIDemo
//
//  Created by Pedro Zaroni on 10/12/19.
//  Copyright © 2019 Dextra. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name: String = ""

    var body: some View {
        NavigationView {
            VStack(spacing: 50) {
                HStack(spacing: 20) {
                    Text("Digite seu nome:")
                    TextField("Pedro", text: $name)
                }
                NavigationLink(destination: NextView(name: name)) {
                    HStack {
                        Spacer()
                        Text("Ir!")
                            .padding(20)
                        Spacer()
                    }
                    .background(Color.blue)
                    .foregroundColor(Color.white)
                    .cornerRadius(200)
                }
            }
            .padding(50)
            .navigationBarTitle("SwiftUI Demo")
        }
    }
}

struct NextView: View {
    var name: String

    var body: some View {
        Text("Oi, \(name)!!")
            .font(.largeTitle)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
