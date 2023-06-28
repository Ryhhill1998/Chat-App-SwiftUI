//
//  Message.swift
//  Chat App SwiftUI
//
//  Created by Ryan Henzell-Hill on 28/06/2023.
//

import Foundation

struct Message: Identifiable {
    let id: String
    let content: String
    let sent: Bool
    let timestamp: Date
}
