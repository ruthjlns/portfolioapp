//
//  AchievementsGridView.swift
//  PortfolioApp
//

import SwiftUI

struct AchievementsGridView: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Experiences & Achievements")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 5)
                .padding(.bottom, 8)
                .foregroundColor(.textPrimary)
            
            // Row 1
            HStack(spacing: 14) {
                
                // Card 1: iSpark
                VStack {
                    // Profile Picture Placeholder
                    Image("experiences-ispark")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 136, height: 174)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.top, 17)
                    
                    Text("iSpark\nInternational\nPitching\nCompetition")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.top, 8)
                    
                    Text("Third Prize")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.bottom, 17)
                }
                // The Pill Shape Background
                .frame(width: 160, height: 332)
                .glassEffect(.regular.tint(Color.white.opacity(0.7)), in: .rect(cornerRadius: 12))
                .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
                
                // Card 2: Apple
                VStack {
                    // Profile Picture Placeholder
                    Image("experiences-apple")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 136, height: 174)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.top, 17)
                    
                    Text("Apple Developer Academy @ UC\nCohort 2026")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.top, 8)
                    
                    Text("UI/UX\nDesigner")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.bottom, 17)
                }
                // The Pill Shape Background
                .frame(width: 160, height: 332)
                .glassEffect(.regular.tint(Color.white.opacity(0.7)), in: .rect(cornerRadius: 12))
                .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
            }
            // Row 2
            HStack(spacing: 14) {
                
                // Card 3: Kreativi Seni
                VStack {
                    // Profile Picture Placeholder
                    Image("experiences-kreativi-seni")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 136, height: 174)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.top, 17)
                    
                    Text("Kreativi Seni National Competition")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.top, 8)
                    
                    Text("Harapan 1 & Juara Berbakat")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.bottom, 17)
                }
                // The Pill Shape Background
                .frame(width: 160, height: 332)
                .glassEffect(.regular.tint(Color.white.opacity(0.7)), in: .rect(cornerRadius: 12))
                .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
                
                // Card 4: Ah Pek
                VStack {
                    // Profile Picture Placeholder
                    Image("experiences-ahpek")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 136, height: 174)
                        .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        .padding(.top, 17)
                    
                    Text("Ah Pek\nTypography Augmented\nReality Design")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.top, 8)
                    
                    Text("Top 20")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.center)
                        .foregroundColor(.textPrimary)
                        .padding(.bottom, 17)
                }
                // The Pill Shape Background
                .frame(width: 160, height: 332)
                .glassEffect(.regular.tint(Color.white.opacity(0.7)), in: .rect(cornerRadius: 12))
                .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
            }
        }
    }
}
#Preview {
    ZStack {
        Color.gray.opacity(0.3).ignoresSafeArea()
        AchievementsGridView()
    }
}
