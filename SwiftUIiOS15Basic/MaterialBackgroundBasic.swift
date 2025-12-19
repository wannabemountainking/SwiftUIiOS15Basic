//
//  MaterialBackgroundBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/18/25.
//

import SwiftUI

struct MaterialBackgroundBasic: View {
    private let url = URL(string: "https://picsum.photos/1000")
    
    var body: some View {
        VStack {
            Spacer()
            
            VStack {
                RoundedRectangle(cornerRadius: 3)
                    .frame(width: 50, height: 3)
                    .padding()
                Spacer()
                Text("Material Background 예시")
                    .font(.headline)
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
        }
        .background(
            AsyncImage(url: url) { Image in
                Image
                    .resizable()
                    .frame(maxHeight: .infinity)
                    .scaledToFill()
            } placeholder: {
                ProgressView()
            }
        )
        .ignoresSafeArea()
    }
}

#Preview {
    MaterialBackgroundBasic()
}
