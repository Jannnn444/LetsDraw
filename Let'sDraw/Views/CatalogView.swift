//
//  CatalogView.swift
//  Let'sDraw
//
//  Created by Janus 333 on 2026/7/24.
//

import SwiftUI

struct CatalogView : View {
    var hrzCountCatalogNumber: Int = 3
    var vrtCountCatalogNumber: Int = 2
    
    var body: some View {
        ZStack {
            Color.blue.ignoresSafeArea()
            
            VStack {
                ForEach(0..<vrtCountCatalogNumber) { num in
                    HStack {
                        ForEach(0..<hrzCountCatalogNumber) { num in
                            RoundedRectangle(cornerRadius: 20)
                                .frame(width: 150, height: 200)
                                .foregroundStyle(.yellow)
                                .padding()
                        }
                    }
                }
            }.padding()
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("CATALOG")
                    .font(.system(size: 34, weight: .bold, design: .monospaced))
                    .foregroundStyle(.black)
            }
        }
    }
}


#Preview{
    CatalogView()
}
