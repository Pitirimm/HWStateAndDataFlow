//
//  UserManager.swift
//  HWStateAndDataFlow
//
//  Created by Yuriy Martinovskiy on 04.08.2021.
//

import Combine

final class UserManager: ObservableObject {
    @Published var isRegistered = false
    var name = ""
    
    init() {}
    
    init(name: String) {
        self.name = name
    }
}
