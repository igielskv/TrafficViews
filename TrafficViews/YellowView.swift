//
//  YellowView.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct YellowView: View {
    var body: some View {
        ZStack {
            Color(.systemYellow)
                .edgesIgnoringSafeArea(.all)
            NavigationLink(destination: GreenView()) {
                Text("Navigate")
            }
        }
        .navigationBarTitle("Yellow")
    }
}

struct YellowView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            YellowView()
        }
    }
}
