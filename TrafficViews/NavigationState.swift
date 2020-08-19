//
//  NavigationState.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import Foundation

class NavigationState: ObservableObject {
    @Published var yellowIsActive = false
    @Published var greenIsActive = false
}
