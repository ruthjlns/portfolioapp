//
//  WorksListView.swift
//  PortfolioApp
//

import SwiftUI

struct WorksListView: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Featured Works")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 5)
                .padding(.bottom, 16)
                .foregroundColor(.textPrimary)
            
            // Card 1: Product Design
            ZStack(alignment: .bottomLeading) {
                Image("works-product-design")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 319, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                let customShape = UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 12,
                        bottomTrailingRadius: 12,
                        topTrailingRadius: 0,
                        style: .continuous
                    )
                customShape
                    .frame(width: 319, height: 74)
                    .glassEffect(.regular.tint(Color.white), in: customShape)
                    .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                    .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Product Design")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                    
                    Text("HONOR Merchandise Design")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                }
                .padding(.leading, 21)
                .padding(.bottom, 16)
            }
            
            // Card 2: UI/UX Design
            ZStack(alignment: .bottomLeading) {
                Image("works-uiux-design")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 319, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                let customShape = UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 12,
                        bottomTrailingRadius: 12,
                        topTrailingRadius: 0,
                        style: .continuous
                    )
                customShape
                    .frame(width: 319, height: 74)
                    .glassEffect(.regular.tint(Color.white), in: customShape)
                    .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                    .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("UI/UX Design")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                    
                    Text("Daycrumbs Child Diary App")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                }
                .padding(.leading, 21)
                .padding(.bottom, 16)
            }
            
            // Card 3: Animation
            ZStack(alignment: .bottomLeading) {
                Image("works-animation")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 319, height: 220)
                    .clipShape(RoundedRectangle(cornerRadius: 12, style: .continuous))
                
                let customShape = UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 12,
                        bottomTrailingRadius: 12,
                        topTrailingRadius: 0,
                        style: .continuous
                    )
                customShape
                    .frame(width: 319, height: 74)
                    .glassEffect(.regular.tint(Color.white), in: customShape)
                    .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
                    .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Animation")
                        .font(.headline)
                        .fontWeight(.semibold)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                    
                    Text("Nomad Game Demo")
                        .font(.subheadline)
                        .fontWeight(.regular)
                        .italic()
                        .multilineTextAlignment(.leading)
                        .foregroundColor(.textPrimary)
                }
                .padding(.leading, 21)
                .padding(.bottom, 16)
            }
        }
    }
}
#Preview {
    ZStack {
        Color.gray.opacity(0.3).ignoresSafeArea()
        WorksListView()
    }
}
