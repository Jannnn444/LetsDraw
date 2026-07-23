//
//  ContentView.swift
//  Let'sDraw
//
//  Created by Janus 333 on 2026/7/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(.blue).ignoresSafeArea()
            Image(systemName: "")
            
            VStack {
                Text("Evening Adventurer, Beat Monster!")
                    .font(.system(size: 50))
                    .fontDesign(.monospaced)
                    .foregroundStyle(.black)
                    .bold()
                    .fontWeight(.heavy)
                    .padding()
                
                
                VStack {
                    CoreButtonView(title: "CATALOG", destination: "")
                       
                    CoreButtonView(title: "CREATOR", destination: "")
                    
                    CoreButtonView(title: "SUPPORT", destination: "")
                       
                }.offset(y: 50)
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
