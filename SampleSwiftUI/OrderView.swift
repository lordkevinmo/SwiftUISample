//
//  OrderView.swift
//  SampleSwiftUI
//
//  Created by Moïse AGBENYA on 05/02/2020.
//  Copyright © 2020 Moïse AGBENYA. All rights reserved.
//

import SwiftUI

struct OrderView: View {    @EnvironmentObject var order : Order
    var body: some View {
        NavigationView {
            List {
                Section {
                    ForEach(order.items) {
                        item in
                        HStack {
                            Text(item.name)
                            Spacer()
                            Text("\(item.price) €")
                        }
                    }
                }
                
                Section {
                    NavigationLink(destination: Text("Check out")) {
                        Text("Place Order")
                    }
                }
            }
            .navigationBarTitle("Order")
        .listStyle(GroupedListStyle())
        }
    }
}

struct OrderView_Previews: PreviewProvider {
    static let order = Order()
    
    static var previews: some View {
        OrderView().environmentObject(order)
    }
}
