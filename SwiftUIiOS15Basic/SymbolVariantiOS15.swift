//
//  SymbolVariantiOS15.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/20/25.
//

import SwiftUI

struct SymbolVariantiOS15: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Symbol Variant")
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            List {
                Label("None", systemImage: "heart").symbolVariant(.none)
                Label("Circle", systemImage: "heart").symbolVariant(.circle)
                Label("Fill", systemImage: "heart").symbolVariant(.fill)
                Label("Rectangle", systemImage: "heart").symbolVariant(.rectangle)
                Label("Circle Fill", systemImage: "heart").symbolVariant(.circle.fill)
                Label("Rectangle Fill", systemImage: "heart").symbolVariant(.rectangle.fill)
                Label("Square", systemImage: "heart").symbolVariant(.square)
                Label("Square Fill", systemImage: "heart").symbolVariant(.square.fill)
                Label("Slash", systemImage: "heart").symbolVariant(.slash)
                Label("Slash Fill", systemImage: "heart").symbolVariant(.slash.fill)
            }
            
            List {
                Label("basketball", systemImage: "basketball")
                Label("suitcase", systemImage: "suitcase")
                Label("eraser", systemImage: "eraser")
                Label("baseball", systemImage: "baseball")
            }
            .symbolVariant(.fill)
            
            Spacer()
        }
        .font(.title)
    }
}

#Preview {
    SymbolVariantiOS15()
}
