//
//  TextiOS15.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/19/25.
//

import SwiftUI

struct TextiOS15: View {
    var body: some View {
        VStack(spacing: 10) {
            Text("1. Markdown")
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            Text("*Italic*")
            Text("_Italic_")
            Text("**BOLD**")
            Text("***BOLD & Italic***")
            Text("___Bold & Italic___")
            Text("[URL](https://www.google.com)")
            Link(destination: URL(string: "https://www.google.com")!) {
                Text("google")
            }
            Text("`print(test)`") // 코드 형태로 나타내줌
            Spacer()
        }
        .padding()
        .font(.title)
    }
}

struct TextSelectioniOS15: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("2. Text Selection")
                .font(.largeTitle)
                .foregroundStyle(.blue)
            
            Text("Text 선택 안됨 (기본 설정)")
            Text("Text 선택 됨 (복사, 공유 됨)")
                .textSelection(.enabled)
            Spacer()
        }
    }
}

#Preview {
    TextiOS15()
}

#Preview {
    TextSelectioniOS15()
}
