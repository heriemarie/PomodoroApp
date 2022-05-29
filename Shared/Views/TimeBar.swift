//
//  TimeBar.swift
//  PomodoroApp
//
//  Created by Herie Marie A. Estaño on 4/5/22.
//

import SwiftUI

struct TimeBar: View {
    
    @EnvironmentObject var pomodoroModel: PomodoroModel
    
    let cornerRadius: CGFloat = 5
    let width: CGFloat = 5
    let height: CGFloat = 350
    
    var progressBarHeight: CGFloat {
        if pomodoroModel.timerActive == true {
            return CGFloat(pomodoroModel.timeRemaining / pomodoroModel.timeStart * 350)
        } else {
            return 0
        }
    }
    
    var progressBarColor: Color {
        if pomodoroModel.timeStart == 5 {
            return Color(.systemTeal)
        } else if pomodoroModel.timeStart == 10 {
            return Color(.systemPurple)
        } else if pomodoroModel.timeStart == 15 {
            return Color(.systemBlue)
        } else {
            return Color(.systemFill)
        }
    }
    
    var body: some View {
        
        ZStack {
            
            RoundedRectangle(cornerRadius: cornerRadius)
                .foregroundColor(Color(.systemGray2))
                .frame(width: width, height: height, alignment: .center)
            
            
            VStack {
                Spacer()
                RoundedRectangle(cornerRadius: cornerRadius)
                   // .foregroundColor(Color(.systemGray2))
                    .foregroundColor(progressBarColor)
                    .frame(width: width, height: progressBarHeight, alignment: .center)
                
            }
            
        }.frame(width: width, height: height, alignment: .center)
    }
}

//struct TimeBar_Previews: PreviewProvider {
//    static var previews: some View {
//        TimeBar()
//            .previewLayout(.sizeThatFits)
//    }
//}
