//
//  SwipeActionsBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/19/25.
//

import SwiftUI

struct SwipeActionsBasic: View {
    @State private var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) {
                Text($0)
                    .font(.headline)
                    .swipeActions(edge: .trailing, allowsFullSwipe: false) {
                        Button {
                            //action
                            
                        } label: {
                            Label("SAVE", systemImage: "square.and.arrow.down")
                        }
                        .tint(.green)
                        
                        Button {
                            //action
                        } label: {
                            Label("DELETE", systemImage: "trash")
                        }
                        .tint(.red)
                    }
                    .swipeActions(edge: .leading, allowsFullSwipe: true) {
                        Button {
                            //action
                        } label: {
                            Label("SHARE", systemImage: "square.and.arrow.up")
                        }
                        .tint(.yellow)

                    }
            }
        }
    }
}

#Preview {
    SwipeActionsBasic()
}
