//
//  TimeLabel.swift
//  PomodoroApp
//
//  Created by Herie Marie A. Estaño on 4/5/22.
//

import SwiftUI

struct TimeLabel: View {
    
    @EnvironmentObject var pomodoroModel: PomodoroModel
        
    var timeRemainingString: String {
        String(pomodoroModel.timeRemaining)
    }
    var foregroundColor: Color {
        if pomodoroModel.timeStart == 5 {
            return Color(.systemTeal)
        } else if pomodoroModel.timeStart == 10 {
            return Color(.systemPurple)
        } else if pomodoroModel.timeStart == 15 {
            return Color(.systemBlue)
        } else {
            return Color(.systemGray)
        }
    }
    
    var completedIcon: String = "hand.thumbsup"
    
   
    var body: some View {
        
        ZStack {
            
            if pomodoroModel.timerActive == true {
                Text(timeRemainingString)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame(width: 100, height: 100, alignment: .center)
                    .foregroundColor(foregroundColor)
            } else {
                Image(systemName: completedIcon)
                    .font(.custom(completedIcon, fixedSize: 50.0))
                    .frame(width: 50, height: 100, alignment: .center)
                    .foregroundColor(Color(.systemGray))
                    
                
            }
        }
    }
    
    

}

struct TimeLabel_Previews: PreviewProvider {
    static var previews: some View {
        TimeLabel()
            .previewLayout(.sizeThatFits)
    }
}
