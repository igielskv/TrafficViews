//
//  RedView.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct RedView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemRed)
                    .edgesIgnoringSafeArea(.all)
                NavigationLink(destination: YellowView()) {
                    Text("Navigate")
                }
            }.navigationBarTitle("Red", displayMode: .inline)
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
