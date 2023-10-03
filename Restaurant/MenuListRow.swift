//
//  MenuListRow.swift
//  Menu
//
//  Created by Sunil Sharma on 07/09/23.
//

import SwiftUI

struct MenuListRow: View {
    var item: MenuItem
    var body: some View {
        HStack{
            
            Image(item.imageName).resizable().aspectRatio(contentMode: .fit).frame(height: 50).cornerRadius(12)
            
            
            Text(item.name).bold()
            
            Spacer()
            Text("$" + item.price).bold()
            
        }
        .listRowSeparator(.hidden)
        .listRowBackground(Color(.brown)
            .opacity(0.1))
    }
}

struct MenuListRow_Previews: PreviewProvider {
    static var previews: some View {
        MenuListRow(item: MenuItem(name: "Test Item", price: "1.99", imageName: "tako-sushi"))
    }
}
