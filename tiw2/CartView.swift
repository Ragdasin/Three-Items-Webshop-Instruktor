//
//  CartView.swift
//  tiw2
//
//  Created by Job Silas Nisgaard Ehrich on 30/10/2024.
//

import SwiftUI

struct CartView: View {
    var cart: [String]
    
    var body: some View {
        VStack{
            Text("Shopping cart:")
                .font(.largeTitle)
                .fontWeight(.bold)
            
           List(cart, id: \.self) { item in
                    Text(item)
                }
            Spacer()
        }
    }
}
