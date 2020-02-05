//
//  ItemRow.swift
//  SampleSwiftUI
//
//  Created by Moïse AGBENYA on 05/02/2020.
//  Copyright © 2020 Moïse AGBENYA. All rights reserved.
//

import SwiftUI

struct ItemRow: View {
    var item : MenuItem
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
            
            VStack(alignment: .leading) {
                Text(item.name)
                Text("\(item.price) €")
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
