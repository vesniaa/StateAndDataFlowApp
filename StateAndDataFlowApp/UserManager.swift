//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Евгения Аникина on 20.05.2022.
//

import Foundation
import UIKit

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
    
    public func logOut() {
        isRegistered.toggle()
        name = ""
    }
}
