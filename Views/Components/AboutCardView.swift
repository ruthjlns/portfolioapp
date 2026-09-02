//
//  AboutCardView.swift
//  PortfolioApp
//

import SwiftUI

struct AboutCardView: View {
    var body: some View {
        VStack {
            Text("About Me")
                .font(.title2)
                .fontWeight(.bold)
                .padding(.top, 28)
                .foregroundColor(Color("text-primary"))
            
            // Profile Picture Placeholder
            Image("about-profile")
                .resizable()
                .scaledToFill()
                .scaleEffect(1.15)
                .offset(x: 12, y: 46)
                .frame(width: 249, height: 249)
                .clipShape(Circle())
                .padding(.top, 16)

            Text("Ruth Julien Sutanto")
                .font(.headline)
                .fontWeight(.semibold)
                .padding(.top, 40)
                .foregroundColor(Color("text-primary"))
            
            Text("I’ve been passionate about art since elementary school, which led me to pursue Visual Communication Design at Universitas Ciputra Surabaya. I focus on graphic design across areas like pattern design, packaging, and merchandise, primarily using Adobe Illustrator, along with After Effects and Photoshop.")
                .font(.body)
                .multilineTextAlignment(.center)
                .foregroundColor(Color("text-primary"))
                .padding(.horizontal, 28)
                .padding(.top, 10)
                .padding(.bottom, 70)
        }
        // The Pill Shape Background
        .frame(width: 300)
        .glassEffect(.regular.tint(Color.white.opacity(0.7)), in: .rect(cornerRadius: 150))
        .shadow(color: .black.opacity(0.12), radius: 40, x: 0, y: 8)
        .shadow(color: .black.opacity(0.10), radius: 2, x: 0, y: 0)
    }
}

#Preview {
    ZStack {
        Color.gray.opacity(0.3).ignoresSafeArea()
        AboutCardView()
    }
}
