//
//  RegisterView.swift
//  StateAndDataFlowApp
//
//  Created by Евгения Аникина on 20.05.2022.
//

import SwiftUI

struct RegisterView: View {
    
    @EnvironmentObject private var userManger: UserManager
    @AppStorage(DataManager.name)
    
    private var name = ""
    
    var nameIsValid: Bool {
        name.count >= 3
    }
    
    var body: some View {
        VStack {
            VStack {
                HStack {
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
                .padding(.leading, 30)
                Text("\(name.count)")
                    .padding(.trailing, 40)
                    .foregroundColor(nameIsValid ? .green : .red)
                }
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
            }
            .disabled(!nameIsValid)
        }
    }
}
    
    private func registerUser() {
        if !name.isEmpty {
            userManger.name = name
            userManger.isRegistered.toggle()
        }
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
            .environmentObject(UserManager())
    }
}

