//
//  MessageField.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct MessageField: View {
    
    let sendPressed: (String) -> Void
    
    var body: some View {
        CustomTextField(sendPressed: sendPressed)
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField { text in
            print(text)
        }
    }
}

struct CustomTextField: View {
    @State var textFieldText: String = ""
    
    let sendPressed: (String) -> Void
    
    var body: some View {
        HStack(spacing: 10.0) {
            TextField("Enter message", text: $textFieldText)
                .padding(.horizontal, 20)
                .padding(.vertical, 7)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                .font(.headline)
                .foregroundColor(Color("RoyalPurple"))
                .accentColor(Color("RoyalPurple"))

            Button {
                if textFieldText == "" { return }
                sendPressed(textFieldText)
                textFieldText = ""
            } label: {
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .frame(width: 35, height: 35)
                    .foregroundColor(Color("RoyalPurple"))
            }
        }
        .padding()
    }
}
