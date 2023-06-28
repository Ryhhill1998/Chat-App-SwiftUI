//
//  HomeView.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("RoyalPurple").ignoresSafeArea()
            
            VStack(spacing: 25.0) {
                Spacer()
                
                Image("Logo")
                
                Spacer()
                
                NavigationLink {
                    ChatView()
                } label: {
                    NavLinkLabel(text: "Login", colourString: "RoyalPeach")
                }
                
                NavigationLink {
                    ChatView()
                } label: {
                    NavLinkLabel(text: "Register", colourString: "RoyalPink")
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
