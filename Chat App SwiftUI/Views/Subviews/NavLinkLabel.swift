//
//  NavLinkLabel.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct NavLinkLabel: View {
    
    let text: String
    let colourString: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 25))
            .bold()
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color(colourString))
            .cornerRadius(15)
            .foregroundColor(Color("White"))
            .padding(.horizontal)
    }
}

struct NavLinkLabel_Previews: PreviewProvider {
    static var previews: some View {
        NavLinkLabel(text: "Register", colourString: "RoyalPink")
    }
}
