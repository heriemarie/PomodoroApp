//
//  ContentView.swift
//  Shared
//
//  Created by Herie Marie A. Estaño on 4/4/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        NavigationView {
            VStack(alignment: .center, spacing: 30) {
                
                TimeBar()
                TimeLabel()
                
                HStack(alignment: .center, spacing: 40) {
                    TimeButtons(number: "5", color: Color(.systemTeal))
                    TimeButtons(number: "10", color: Color(.systemPurple))
                    TimeButtons(number: "15", color: Color(.systemBlue))
                }
           
            }
            
            .navigationTitle("My Pomodoro App")
            .navigationBarItems(trailing: DarkMode())
        } //: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
