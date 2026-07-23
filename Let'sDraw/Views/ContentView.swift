//
//  ContentView.swift
//  Let'sDraw
//
//  Created by Janus 333 on 2026/7/23.
//

import SwiftUI

struct ContentView: View {
    @State private var path = NavigationPath() //only swap inside this object
    
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
                    CoreButtonView(title: "CATALOG", destination: .catalog, path: $path)
                       
                    CoreButtonView(title: "CREATOR", destination: .profile, path: $path)
                    
                    CoreButtonView(title: "SETTINGS", destination: .settiings, path: $path)
                       
                }
                .offset(y: 50)
                .navigationDestination(for: AppDestination.self) { destination in
                    switch destination {
                    case .catalog:
                        CatalogView()
                    case .profile:
                        ProfileView()
                    case .settiings:
                        SettingsView()
                    }
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
