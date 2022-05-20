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
            TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
                .font(.title)
                .foregroundColor(.blue)
            }
            .disabled(!nameIsValid)
        }
            .padding(.leading, 40)
            Text("\(name.count)")
                .padding(.trailing, 20)
                .foregroundColor(nameIsValid ? .green : .red)
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

