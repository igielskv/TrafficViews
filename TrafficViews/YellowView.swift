//
//  YellowView.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct YellowView: View {
    
    var title: String
    
    init(title: String = "Yellow") {
        self.title = title.isEmpty ? "Yellow" : title
    }
    
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
        }
        .navigationBarTitle(title)
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            YellowView()
        }
    }
}
