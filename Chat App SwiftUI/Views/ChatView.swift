//
//  ChatView.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct ChatView: View {
    
    var body: some View {
        ZStack {
            Color("RoyalPurple").edgesIgnoringSafeArea(.all)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("toolbar")
                            .multilineTextAlignment(.leading)
                    }
                }
            
            VStack {
                TitleRow()
            }
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
