//
//  TextSelectionBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/18/25.
//

import SwiftUI

struct TextSelectionBasic: View {
    var body: some View {
        Text("길게 누르면 복사 또는 공유 옵션이 뜹니다")
            .font(.title2)
            .textSelection(.enabled)
    }
}

#Preview {
    TextSelectionBasic()
}
