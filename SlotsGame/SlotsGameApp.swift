//
//  SlotsGameApp.swift
//  SlotsGame
//
//  Created by Umur İslamoğlu on 2.11.2022.
//

import SwiftUI

@main
struct SlotsGameApp: App {
    var body: some Scene {
        WindowGroup {
            ZStack{
                Color.black.ignoresSafeArea().opacity(0.5)

                ContentView().background(
                    Image("casino")
                        .resizable().ignoresSafeArea().opacity(0.4)
                )}
        }
    }
}
