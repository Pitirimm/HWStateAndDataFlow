//
//  ContentView.swift
//  HWStateAndDataFlow
//
//  Created by Yuriy Martinovskiy on 04.08.2021.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        Group {
            if user.isRegistered {
                DetailsView()
            } else {
                RegisterView()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(UserManager())
    }
}
