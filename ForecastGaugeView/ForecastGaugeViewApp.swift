//
//  ForecastGaugeViewApp.swift
//  ForecastGaugeView
//
//  Created by Kartikeya Saxena Jain on 2/17/24.
//

import SwiftUI

@main
struct ForecastGaugeViewApp: App {
    var body: some Scene {
        WindowGroup {
            ForecastGaugeView(percentPosition: 0.6, thumbnailText: "Hi")
        }
    }
}
