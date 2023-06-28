//
//  MessageField.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct MessageField: View {
    
    var body: some View {
        CustomTextField()
    }
}

struct MessageField_Previews: PreviewProvider {
    static var previews: some View {
        MessageField()
    }
}

struct CustomTextField: View {
    @State var textFieldText: String = ""
    
    var body: some View {
        HStack(spacing: 10.0) {
            TextField("Enter message", text: $textFieldText)
                .padding(.horizontal, 20)
                .padding(.vertical, 10)
                .background(Color.gray.opacity(0.2))
                .cornerRadius(15)
                .font(.headline)
                .foregroundColor(Color("RoyalPurple"))
            
            Button {
                print(textFieldText)
            } label: {
                Image(systemName: "paperplane.circle.fill")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color("RoyalPurple"))
            }
        }
        .padding()
    }
}
