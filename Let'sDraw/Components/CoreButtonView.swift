//
//  CoreButtonView.swift
//  Let'sDraw
//
//  Created by Janus 333 on 2026/7/23.
//

import SwiftUI

struct CoreButtonView: View {
    var title: String
    var destination: AppDestination
    @Binding var path: NavigationPath
    
    var body: some View {
        Button(action: {
            //action
            path.append(destination)
        }) {
            Text(title)
                .font(.system(size: 30, weight: .bold, design: .monospaced))
                .foregroundStyle(.black)
                .padding()
                .background(.yellow)
                .cornerRadius(20)
                .padding()
        }
        
    }
    
}

