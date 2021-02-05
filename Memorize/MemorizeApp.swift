//
//  MemorizeApp.swift
//  Memorize
//
//  Created by Ergenekon Yiğit on 31.01.2021.
//

import SwiftUI

@main
struct MemorizeApp: App {
    let game = EmojiMemoryGame()
    var body: some Scene {
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
