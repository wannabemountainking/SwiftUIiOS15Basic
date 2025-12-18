//
//  AsyncImageBasic.swift
//  SwiftUIiOS15Basic
//
//  Created by YoonieMac on 12/18/25.
//

import SwiftUI

struct AsyncImageBasic: View {
    private let url: URL? = URL(string: "https://picsum.photos/200")
    var body: some View {
        // 일반적인 AsyncImage 사용 with Progress()
        Text("1. 일반적인 AsyncImage 사용 예시")
            .font(.headline)
            .padding()
        
        AsyncImage(url: url) { image in
            image
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 20))
        } placeholder: {
            ProgressView()
                .scaleEffect(2)
        }
        
        Divider()
        
        // Switch를 통한 에러 분기
        /*
         switch case {
         case empty -> Image 없음
         case success -> Image 로드 성공
         case failure -> Image 로드 실패 with error
         }
         */
        Text("2. Switch문을 이용한 AsyncImage 에러 처리")
            .font(.headline)
            .padding()
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
                    .scaleEffect(2)
            case .success(let image):
                image
                    .scaledToFit()
                    .clipShape(RoundedRectangle(cornerRadius: 20))
            case .failure(let error):
                Text("Image가 로드되지 않습니다")
                    .font(.headline)
            default:
                Text("Image가 로드되지 않습니다")
                    .font(.headline)
            }
        }
        
        

    }
}

#Preview {
    AsyncImageBasic()
}
