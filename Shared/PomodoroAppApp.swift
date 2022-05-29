//
//  PomodoroAppApp.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 4/4/22.
//

import SwiftUI

@main
struct PomodoroAppApp: App {
    
    @StateObject var pomodorpModel: PomodoroModel = PomodoroModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(pomodorpModel)
        }
    }
}
