//
//  ForecastGaugeView.swift
//  Aurora
//
//  Created by Kartikeya Saxena Jain on 2/17/24.
//

import SwiftUI

struct ForecastGaugeView: View {
    @State var containerWidth: CGFloat = 0
    private let cornerRadius: CGFloat = 60
    
    @State var percentPosition: CGFloat
    @State var thumbnailText: String
    
    var body: some View {
        VStack {
            ZStack(alignment: .leading) {
                GeometryReader { geo in
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .foregroundColor(.gray.opacity(0.2))
                        .onAppear {
                            self.containerWidth = geo.size.width
                        }
                }
                
                RoundedRectangle(cornerRadius: cornerRadius)
                    .stroke(Color.black)
                
                ZStack(alignment: .trailing) {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(Color.yellow)
                    
                    Text(thumbnailText)
                        .foregroundColor(.white)
                        .padding(.horizontal, 12)
                        .padding(.vertical, 6)
                        .background (
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .fill(Color.blue)
                        )
                }
                .padding(2)
                .frame(minWidth: containerWidth * percentPosition)
                .fixedSize()
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding()
        }
    }
}

#Preview {
    VStack(spacing: 10) {
        ForecastGaugeView(percentPosition: 1.0, thumbnailText: "75˚F")
        ForecastGaugeView(percentPosition: 1.0, thumbnailText: "75˚F")
        ForecastGaugeView(percentPosition: 0.7, thumbnailText: "7 mph")
        ForecastGaugeView(percentPosition: 0.25, thumbnailText: "25 %")

    }
}
