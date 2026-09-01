//
//  AchievementsGridView.swift
//  PortfolioApp
//

import SwiftUI

struct AchievementsGridView: View {
    // This allows the card to tell the main view to close it
    //var closeAction: () -> Void
    
    var body: some View {
        VStack(spacing: 16) {
            Text("Experiences & Achievements")
                .font(.headline)
                .fontWeight(.bold)
                .padding(.top, 24)
            
            // Profile Picture Placeholder (Gray Circle for now)
            Circle()
                .fill(Color.gray.opacity(0.5))
                .frame(width: 150, height: 150)
                // When you have your image, you'll swap the Circle() out for this:
                // Image("ruth_profile").resizable().scaledToFill().frame(width: 150, height: 150).clipShape(Circle())
            
            Text("Experiences")
                .font(.title3)
                .fontWeight(.bold)
            
            Text("I've been passionate about art since elementary school, which led me to pursue Visual Communication Design at Universitas Ciputra Surabaya. I focus on graphic design across areas like pattern design, packaging, and merchandise, primarily using Adobe Illustrator, along with After Effects and Photoshop.")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .foregroundColor(.gray)
                .padding(.horizontal, 24)
                .padding(.bottom, 32)
        }
        .frame(width: 320)
        // The pill shape background
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 60, style: .continuous))
        .shadow(color: .black.opacity(0.15), radius: 20, x: 0, y: 10)
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.3).ignoresSafeArea()
        AchievementsGridView()
    }
}
