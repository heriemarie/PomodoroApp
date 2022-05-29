//
//  TimeButtons.swift
//  PomodoroApp
//
//  Created by Herie Marie A. Estaño on 4/5/22.
//

import SwiftUI

struct TimeButtons: View {
    
    @EnvironmentObject var pomodoroModel: PomodoroModel
    
    let number: String
    let color: Color

    var body: some View {
        
        HStack(alignment: .center, spacing: 40) {
            Text(number)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color(.white))
                .opacity(pomodoroModel.timerActive ? 0.3 : 1)
                .frame(width: 50, height: 50)
                .background(color)
                .clipShape(Circle())
                .onTapGesture() {
                    pomodoroModel.runPomodoroTimer(time: Float(number) ?? 0)
                    pomodoroModel.timerActive = true
                }
                .onLongPressGesture(perform: pomodoroModel.resetPomodoroTimer)
        }
    }

}

struct TimeButtons_Previews: PreviewProvider {
    static var previews: some View {
        TimeButtons(number: "7", color: Color(.systemGreen))
            .previewLayout(.sizeThatFits)
    }
}
