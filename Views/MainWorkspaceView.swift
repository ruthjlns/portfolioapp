//
//  MainWorkspaceView.swift
//  PortfolioApp
//

import SwiftUI

struct MainWorkspaceView: View {
    @State private var viewModel = WorkspaceViewModel()
    var body: some View {
        GeometryReader { geo in
            ZStack {
                // BACKGROUND LAYER
                Image("main-background")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                
                // HEADER TEXT LAYER
                VStack(alignment: .leading, spacing: 6) {
                    Text("\(Text("A ").fontWeight(.light))\(Text("Designer's").fontWeight(.bold))\(Text("\nWorkspace").fontWeight(.light))")
                        .font(.system(size: 28))
                        .lineSpacing(2)
                    
                    Text("Click an item to explore")
                        .font(.system(size: 15, weight: .thin))
                        .italic()
                }
                .foregroundColor(Color("text-primary"))
                .padding(.leading, 46)
                .padding(.top, 25)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                
                // INTERACTIVE HOTSPOTS LAYER
                // Certificate Hotspot
                Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        viewModel.showExpCard = true
                    }
                }) {
                    Image("main-certificate")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100.18, height: 160.05)
                        .contentShape(Rectangle())
                }
                .position(x: geo.size.width * 0.50
                          , y: geo.size.height * 0.36)
                
                // iMac Hotspot
                Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                        viewModel.showWorksCard = true
                    }
                }) {
                    Image("main-imac")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 417.7, height: 339.18)
                        .contentShape(Rectangle())
                }
                .position(x: geo.size.width * 0.41
                          , y: geo.size.height * 0.72)
                
                // ID Card Hotspot
                Button(action: {
                        withAnimation(.spring(response: 0.5, dampingFraction: 0.7)) {
                            viewModel.showAboutCard = true
                        }
                    }) {
                    Image("main-idcard")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 151, height: 69.5)
                        .contentShape(Rectangle())
                }
                .position(x: geo.size.width * 0.28
                          , y: geo.size.height * 0.97)
                
                // ALL THE POP UP ACTIVATION
                // Certificate Hotspot Card
                if viewModel.showExpCard {
                    // Native iOS blur backdrop
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation { viewModel.showExpCard = false }
                            }
                        
                        // AchievementsGridView Card
                        AchievementsGridView()
                        .offset(y: -50)
                            .transition(.scale(scale: 0.8).combined(with: .opacity))
                    }
                
                // iMac Hotspot Card
                if viewModel.showWorksCard {
                    // Native iOS blur backdrop
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation { viewModel.showWorksCard = false }
                            }
                        
                        // WorksListView Card
                        WorksListView()
                        .offset(y: -50)
                            .transition(.scale(scale: 0.8).combined(with: .opacity))
                    }
                
                // ID Card Hotspot Card
                if viewModel.showAboutCard {
                    // Native iOS blur backdrop
                        Rectangle()
                            .fill(.ultraThinMaterial)
                            .ignoresSafeArea()
                            .onTapGesture {
                                withAnimation { viewModel.showAboutCard = false }
                            }
                        
                        // AboutCardView Card
                        AboutCardView()
                        .offset(y: -50)
                            .transition(.scale(scale: 0.8).combined(with: .opacity))
                    }
            }
        }
    }
}
#Preview {
    MainWorkspaceView()
}
