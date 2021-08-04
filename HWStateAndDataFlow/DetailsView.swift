//
//  DetailsView.swift
//  HWStateAndDataFlow
//
//  Created by Yuriy Martinovskiy on 04.08.2021.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject var user: UserManager
    
    var body: some View {
        VStack {
            Text("Hi! \(user.name)")
                .font(.largeTitle)
                .offset(x: 0, y: 100)
            
            Spacer()
            
            Button(action: {user.isRegistered = false}, label: {
                Text("Log out")
                    .font(.title)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.white)
                   
            })
            .frame(width: 200, height: 60)
            .background(Color.red)
            .cornerRadius(20)
            .overlay(RoundedRectangle(cornerRadius: 20, style: /*@START_MENU_TOKEN@*/.continuous/*@END_MENU_TOKEN@*/).stroke(Color.black, lineWidth: 4))
            .padding()
            
        }
    }
}



struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView().environmentObject(UserManager())
    }
}
