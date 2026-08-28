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
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                // 2. INTERACTIVE HOTSPOTS LAYER
                // The Wall Picture / Certificate Hotspot
                Button(action: {
                    viewModel.activeSheet = .achievements
                }) {
                    Image("certificate") // Ensure this matches your Asset catalog name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.18, height: 160.05) // Adjust width/height to fit your room scale
                        .contentShape(Rectangle()) // Ensures the full box area remains tappable
                }
                .position(x: geo.size.width * 0.50
                          , y: geo.size.height * 0.36)
                
                // The iMac (Works)
                Button(action: {
                    viewModel.activeSheet = .works
                }) {
                    Image("imac") // Ensure this matches your Asset catalog name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 417.7, height: 339.18) // Adjust width/height to fit your room scale
                        .contentShape(Rectangle()) // Ensures the full box area remains tappable
                }
                .position(x: geo.size.width * 0.41
                          , y: geo.size.height * 0.72)
                
                // 3. CUSTOM OVERLAY (About Me Card)
                Button(action: {
                    // 1. Trigger the card to open with a smooth spring animation
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                            viewModel.showAboutCard = true
                        }
                    }) {
                    Image("idcard") // Ensure this matches your Asset catalog name
                        .resizable()
                        .scaledToFit()
                        .frame(width: 151, height: 69.5) // Adjust width/height to fit your room scale
                        .contentShape(Rectangle()) // Ensures the full box area remains tappable
                }
                .position(x: geo.size.width * 0.28
                          , y: geo.size.height * 0.97)
                
                if viewModel.showAboutCard {
                    // 2. Native iOS blur backdrop (frosted glass)
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation { viewModel.showAboutCard = false }
                            }
                        
                        // Your custom wireframe card!
                        AboutCardView()
                        .offset(y: -40) // Negative values move UP, positive values move DOWN
                                // .offset(x: 20) // Use x to shift left/right if needed
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
