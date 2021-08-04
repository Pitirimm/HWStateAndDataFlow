//
//  RegisterView.swift
//  HWStateAndDataFlow
//
//  Created by Yuriy Martinovskiy on 04.08.2021.
//

import SwiftUI

struct RegisterView: View {
    @State private var name = ""
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            TextField("Enter your name", text: $name)
                .multilineTextAlignment(.center)
            
            Text("Entered \(name.count) characters")
                .foregroundColor(changeColor())
                .padding()
            
            Button(action: registerUser, label: {
                HStack {
                    Image(systemName: "checkmark.circle")
                    Text("OK")
                }
               
            }).disabled(name.count < 3)
        }
    }
}

extension RegisterView {
    func registerUser() {
        if !name.isEmpty {
            user.name = name
            user.isRegistered = true
        }
    }
    
    func changeColor() -> Color {
        var color: Color = .gray
        if name.count > 2 {
            color = Color.green
        } else {
            color = Color.red
        }
        return color
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView().environmentObject(UserManager())
    }
}
