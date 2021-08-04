//
//  HWStateAndDataFlowApp.swift
//  HWStateAndDataFlow
//
//  Created by Yuriy Martinovskiy on 04.08.2021.
//

import SwiftUI

@main
struct HWStateAndDataFlowApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserManager())
        }
    }
}
