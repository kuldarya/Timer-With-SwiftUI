//
//  FancyTimer.swift
//  ObservableObjectSwiftUI
//
//  Created by Developer on 21.02.2020.
//  Copyright © 2020 Darya Kuliashova. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

class FancyTimer: ObservableObject {
    @Published var time = 0
    
    init() {
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { timer in
            self.time += 1
        }
    }
}
