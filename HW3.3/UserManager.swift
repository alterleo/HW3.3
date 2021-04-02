//
//  UserManager.swift
//  HW3.3
//
//  Created by Alexander Konovalov on 02.04.2021.
//

import Combine

class UserManager: ObservableObject {
    @Published var isRegister = false
    var name = ""
}
