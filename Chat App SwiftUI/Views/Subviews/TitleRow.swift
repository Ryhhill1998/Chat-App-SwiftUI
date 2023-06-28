//
//  TitleRow.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import SwiftUI

struct TitleRow: View {
    
    let imageUrl = URL(string: "https://images.unsplash.com/photo-1544005313-94ddf0286df2?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=776&q=80")
    
    let name = "Sarah Smith"
    
    var body: some View {
        HStack(spacing: 20.0) {
            AsyncImage(url: imageUrl) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 50, height: 50)
                    .cornerRadius(25)
            } placeholder: {
                ProgressView()
            }
            .overlay {
                Circle()
                    .stroke(Color.white, lineWidth: 3)
            }
            
            VStack(alignment: .leading) {
                Text(name)
                    .font(.system(size: 25))
                    .bold()
                    .foregroundColor(.white)
                
                Text("online")
                    .font(.caption)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Image(systemName: "phone.fill")
                .foregroundColor(.gray)
                .padding(10.0)
                .background(.white)
                .clipShape(Circle())
        }
        .padding()
    }
}

struct TitleRow_Previews: PreviewProvider {
    static var previews: some View {
        TitleRow()
            .background(Color("RoyalPurple"))
    }
}
