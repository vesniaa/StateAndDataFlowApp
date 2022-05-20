//
//  UserManager.swift
//  StateAndDataFlowApp
//
//  Created by Евгения Аникина on 20.05.2022.
//

import Foundation

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
}
