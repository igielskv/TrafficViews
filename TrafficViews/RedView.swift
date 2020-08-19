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
    @State private var navigationIsActive: Bool = true
    @State private var yellowIsActive: Bool = false
    @State private var greenIsActive: Bool = false
    
    var body: some View {
        ZStack {
            Color(.systemRed)
                .edgesIgnoringSafeArea(.all)
            VStack {
                TextField("Destination View Title", text: $textField)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                HStack {
                    NavigationLink(destination: YellowView(title: textField), isActive: navigationIsActive ? $yellowIsActive : .constant(false)) {
                        Text("Push to Yellow")
                    }
                    .padding(.trailing)
                    NavigationLink(destination: GreenView(title: textField), isActive: navigationIsActive ? $greenIsActive : .constant(false)) {
                        Text("Push to Green")
                    }
                    .padding(.leading)
                }
                .padding()
                
                Toggle(isOn: $navigationIsActive) {
                    EmptyView()
                }
                .labelsHidden()
            }
        }
        .navigationBarTitle("Red")
    }
}

struct RedView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            RedView()
        }
    }
}
