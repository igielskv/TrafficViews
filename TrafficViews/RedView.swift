//
//  RedView.swift
//  TrafficViews
//
//  Created by Manoli on 19/08/2020.
//  Copyright © 2020 macForce.one. All rights reserved.
//

import SwiftUI

struct RedView: View {
    
    @State private var textField: String = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color(.systemRed)
                    .edgesIgnoringSafeArea(.all)
                VStack {
                    TextField("Destination View Title", text: $textField)
                        .textFieldStyle(RoundedBorderTextFieldStyle()).padding()
                    NavigationLink(destination: YellowView(title: textField)) {
                        Text("Navigate")
                    }
                }
            }
            .navigationBarTitle("Red")
        }
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        RedView()
    }
}
