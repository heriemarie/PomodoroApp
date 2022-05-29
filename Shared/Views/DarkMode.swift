//
//  DarkMode.swift
//  PomodoroApp
//
//  Created by Herie Marie A. Estaño on 4/7/22.
//

import SwiftUI

struct DarkMode: View {
    @State var darkMode: Bool = false
    @State var onscreenMode: ColorScheme = .light
    
    var body: some View {
        
      //  NavigationView {
        VStack(alignment: .center) {
            Section {
                Toggle("", isOn: $darkMode)
                .onChange(of: darkMode) { value in
                    if darkMode == true {
                        onscreenMode = .dark
                    } else {
                        onscreenMode = .light
                    }
                }
            } //: SECTION
           } //: VSTACK
            .preferredColorScheme(onscreenMode)
            .toggleStyle(SwitchToggleStyle(tint: Color(.systemGreen)))
       // } //: NAVIGATION
    }
}

struct DarkMode_Previews: PreviewProvider {
    static var previews: some View {
        DarkMode().previewLayout(.sizeThatFits)
    }
}
