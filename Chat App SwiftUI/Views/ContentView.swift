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
                Color.white.edgesIgnoringSafeArea(.all)
                
                VStack {
                    NavigationLink {
                        ChatView()
                    } label: {
                        Text("Go to chat")
                            .foregroundColor(Color.blue)
                    }
                }
            }
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    TitleRow()
//                        .padding(.bottom, 5)
//                }
//            }
//            .toolbarBackground(Color("RoyalPurple"), for: .navigationBar)
//            .toolbarBackground(.visible, for: .navigationBar)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
