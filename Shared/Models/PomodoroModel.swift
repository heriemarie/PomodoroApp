//
//  PomodoroModel.swift
//  PomodoroApp
//
//  Created by Herie Marie A. Estaño on 4/5/22.
//

import SwiftUI

class PomodoroModel: ObservableObject {
    
    @Published var timeStart: Float = 0
    @Published var timeRemaining: Float = 0
    @Published var timerActive: Bool = false
    
    var timer: Timer?
    
    func runPomodoroTimer(time: Float) {
      //  print("Timer Activated!")
        invalidateTimer()
        initializedTimer(time: time)
    }
    
    func resetPomodoroTimer() {
      //  print("Timer reset!")
        invalidateTimer()
        
    }
    
}

// MARK: - PPomodoroModel Functions

extension PomodoroModel {
    
    func initializedTimer(time: Float) {
        timerActive = true
        timeStart = time
        timeRemaining = timeStart
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { timer in self.runTimerActions()
        }
    }
    
    func invalidateTimer() {
        timerActive = false
        timer?.invalidate()
        timeStart = 0
        timeRemaining = 0
    }
    
    func runTimerActions() {
        
        if timeRemaining > 1 {
            reducedTime()
            checkRemainingTime()
        } else {
            invalidateTimer()
        }
    }
    
    func reducedTime() {
        timeRemaining -= 1
    }
    
    func checkRemainingTime() {
        print("Time remaining \(timeRemaining)")
        
    }
}
