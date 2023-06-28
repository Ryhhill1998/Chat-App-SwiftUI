//
//  ChatView.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct ChatView: View {
    
    let messages = [
        Message(id: "1", content: "Hello there! What is your favourite colour?", sent: true, timestamp: Date()),
        Message(id: "2", content: "Hi! My favourite colour is blue", sent: false, timestamp: Date()),
        Message(id: "3", content: "That's my favourite colour too!", sent: true, timestamp: Date())
    ]
    
    var body: some View {
        VStack {
            VStack {
                
                
                ScrollView {
                    ForEach(messages) { message in
                        MessageBubble(message: message)
                            .padding(.bottom, 5.0)
                    }
                }
                .padding(.top, 10.0)
                .background(.white)
            }
            
            MessageField()
        }
        .toolbar {
            ToolbarItem(placement: .principal) {
                TitleRow()
                    .padding(.bottom, 5)
            }
        }
        .toolbarBackground(Color("RoyalPurple"), for: .navigationBar)
        .toolbarBackground(.visible, for: .navigationBar)
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}
