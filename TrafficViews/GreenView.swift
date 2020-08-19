//
//  GreenView.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct GreenView: View {
    var body: some View {
        ZStack {
            Color(.systemGreen)
                .edgesIgnoringSafeArea(.all)
            Button(action: {
                
            }) {
                Text("Dismiss")
            }
        }.navigationBarTitle("Green")
    }
}

struct GreenView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            GreenView()
        }
    }
}
