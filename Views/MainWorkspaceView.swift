//
//  MainWorkspaceView.swift
//  PortfolioApp
//
//  Created by William Kesuma on 28/08/26.
//

import SwiftUI

struct MainWorkspaceView: View {
    // Connects to your ViewModel
    @State private var viewModel = WorkspaceViewModel()
    
    var body: some View {
        GeometryReader { geo in
            ZStack {
                // 1. BACKGROUND LAYER
                // Placeholder background (replace "room_bg" with your real image name later)
                Color(red: 0.95, green: 0.95, blue: 0.95) // Light gray placeholder
                    .ignoresSafeArea()
                
                // 2. INTERACTIVE HOTSPOTS LAYER
                // The Wall Picture (Certificates/Achievements)
                InteractiveHotspot(iconName: "trophy.fill", label: "Achievements") {
                    viewModel.activeSheet = .achievements
                }
                .position(x: geo.size.width * 0.45, y: geo.size.height * 0.35)
                
                // The iMac (Works)
                InteractiveHotspot(iconName: "briefcase.fill", label: "Works") {
                    viewModel.activeSheet = .works
                }
                .position(x: geo.size.width * 0.30, y: geo.size.height * 0.65)
                
                // The ID Badge (About Me)
                InteractiveHotspot(iconName: "person.fill", label: "About Me") {
                    withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        viewModel.showAboutCard = true
                    }
                }
                .position(x: geo.size.width * 0.75, y: geo.size.height * 0.85)
                
                // 3. CUSTOM OVERLAY (About Me Card)
                if viewModel.showAboutCard {
                    Color.black.opacity(0.3)
                        .ignoresSafeArea()
                        .onTapGesture {
                            withAnimation { viewModel.showAboutCard = false }
                        }
                    
                    // Your new custom wireframe card!
                    AboutCardView()
                    // Adds the cool pop-in animation
                    .transition(.scale(scale: 0.8).combined(with: .opacity))
                }
            }
        }
        // NATIVE SHEETS (For Works and Achievements)
        .sheet(item: $viewModel.activeSheet) { sheet in
            switch sheet {
            case .works:
                Text("Works List View Placeholder") // Replace with WorksListView()
            case .achievements:
                Text("Achievements Grid Placeholder") // Replace with AchievementsGridView()
            default:
                EmptyView()
            }
        }
    }
}

#Preview {
    MainWorkspaceView()
}
