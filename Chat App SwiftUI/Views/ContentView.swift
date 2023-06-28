//
//  ContentView.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    NavigationLink {
                        ChatView()
                    } label: {
                        Text("Go to chat")
                    }
                }
            }
            .navigationTitle("")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
