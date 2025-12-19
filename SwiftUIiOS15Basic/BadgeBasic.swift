//
//  BadgeBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by YoonieMac on 12/19/25.
//

import SwiftUI

struct BadgeBasic: View {
    var body: some View {
        if #available(iOS 18.0, *) {
            TabView {
                Tab("LOVE", systemImage: "heart.fill") {
                    Color.red.ignoresSafeArea(edges: .top)
                }
                .badge(0)
                
                Tab("LOVE", systemImage: "heart.fill") {
                    Color.green.ignoresSafeArea(edges: .top)
                }
                .badge(5)
                
                Tab("LOVE", systemImage: "heart.fill") {
                    Color.blue.ignoresSafeArea(edges: .top)
                }
                .badge("NEW")
            }//:TabView
            
        } else {
            TabView {
                Color.red.ignoresSafeArea(edges: .top)
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("LOVE")
                    }
                    .badge(0)
                
                Color.red.ignoresSafeArea(edges: .top)
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("LOVE")
                    }
                    .badge(5)
                
                Color.red.ignoresSafeArea(edges: .top)
                    .tabItem {
                        Image(systemName: "heart.fill")
                        Text("LOVE")
                    }
                    .badge("NEW")
            }//:TabView
        }
    }
}

struct ListBadgeBasic: View {
    var body: some View {
        //List에서 badge는 간단한 실시간 부연설명으로 사용할 수 있음
        List {
            Text("Hello")
                .badge("New Items!")
            Text("Hello")
                .badge(10)
            Text("Hello")
            Text("Hello")
            Text("Hello")
            
        }
    }
}

#Preview {
    BadgeBasic()
}

#Preview {
    ListBadgeBasic()
}
