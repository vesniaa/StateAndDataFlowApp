//
//  LogOutButton.swift
//  StateAndDataFlowApp
//
//  Created by Евгения Аникина on 20.05.2022.
//

import SwiftUI

struct LogOutButton: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Button(action: {
            UserDefaults.standard.removeObject(forKey: "name")
            user.isRegistered.toggle()
        }) {
            Text("Log Out")
                .font(.largeTitle)
                .fontWeight(.bold)
                .foregroundColor(.white)
        }
        .frame(width: 200, height: 60)
        .background(.blue)
        .cornerRadius(20)
        .overlay(RoundedRectangle(cornerRadius: 20).stroke(.black, lineWidth: 4))
        
    }
}

struct LogOutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogOutButton()
    }
}
