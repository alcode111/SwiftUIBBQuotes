//
//  QuoteView.swift
//  SwiftUIBBQuotes
//
//  Created by Ismaïl LP on 18/04/2024.
//

import SwiftUI

struct QuoteView: View {
    var body: some View {
        GeometryReader { geo in
            ZStack {
                Image("breakingbad")
                    .resizable()
                    .frame(
                        width: geo.size.width * 2.7,
                        height: geo.size.height * 1.2)
                
                VStack {
                    Text("\" You either run from things, or you face them, Mr. White.\"")
                        .multilineTextAlignment(.center)
                        .foregroundStyle(.white) // So the text is visible in light mode
                        .padding()
                        .background(.black.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 25))
                        .padding(.horizontal)
                    
                    ZStack(alignment: .bottom) {
                        Image("jessepinkman")
                            .resizable()
                            .scaledToFill()
                        
                        Text("Jesse Pinkman")
                            .foregroundStyle(.white)
                            .padding(10)
                            .frame(maxWidth: .infinity)
                            .background(.ultraThinMaterial)
                    }
                    .frame(width: geo.size.width / 1.1, height: geo.size.height / 1.8)
                    .clipShape(RoundedRectangle(cornerRadius: 80))
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }
            .frame(
                width: geo.size.width,
                height: geo.size.height)
        }
        .ignoresSafeArea()
    }
}

#Preview {
    QuoteView().preferredColorScheme(.dark)
}
