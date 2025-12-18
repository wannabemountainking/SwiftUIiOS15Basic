//
//  ButtonStyleBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by yoonie on 12/18/25.
//

import SwiftUI

struct ButtonStyleBasic: View {
    var body: some View {
        ScrollView {
            Text("1. 일반적인 ButtonStyle")
                .font(.headline)
            
            Button {
                //action
            } label: {
                Text("Plain ButtonStyle")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.plain)
            
            Button {
                //action
            } label: {
                Text("Bordered ButtonStyle")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            
            Button {
                //action
            } label: {
                Text("BorderedProminent ButtonStyle")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)

            Button {
                //action
            } label: {
                Text("Borderless ButtonStyle")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderless)
            
            if #available(iOS 26.0, *) {
                Button {
                    //action
                } label: {
                    Text("Glass ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.glass)
            }
            
            if #available(iOS 26.0, *) {
                Button {
                    //action
                } label: {
                    Text("GlassProminent ButtonStyle")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.glassProminent)
            }
            
            Divider()
            
            Text("2. Controlsize로 버튼 크기 자동 설정")
                .font(.headline)
            
            if #available(iOS 26.0, *) {
                Button {
                    //action
                } label: {
                    Text("Extralarge ControlSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.glass)
                .controlSize(.extraLarge)
            }
            
            Button {
                // action
            } label: {
                Text("Large ControlSize")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.large)

            if #available(iOS 26.0, *) {
                Button {
                    // action
                } label: {
                    Text("Regular ControlSize")
                }
                .frame(height: 50)
                .frame(maxWidth: .infinity)
                .buttonStyle(.glassProminent)
                .controlSize(.regular)
            }
            
            Button {
                // action
            } label: {
                Text("Small ControlSize")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.borderedProminent)
            .controlSize(.small)
            
            Button {
                // action
            } label: {
                Text("Mini ControlSize")
            }
            .frame(height: 50)
            .frame(maxWidth: .infinity)
            .buttonStyle(.bordered)
            .controlSize(.mini)
        }
    }
}

#Preview {
    ButtonStyleBasic()
}
