//
//  ContentView.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("White").ignoresSafeArea()
                
                HomeView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
