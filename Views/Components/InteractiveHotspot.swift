//
//  InteractiveHotspot.swift
//  PortfolioApp
//

import SwiftUI

struct InteractiveHotspot: View {
    var iconName: String
    var label: String
    var action: () -> Void
    
    var body: some View {
            Button(action: action) {
                Image(systemName: iconName)
                    .font(.system(size: 24))
                    .foregroundColor(.black)
                    .frame(width: 50, height: 50)
                    .background(Circle().fill(.white).shadow(radius: 5))
            }
        }
    }
