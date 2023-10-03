//
//  MenuView.swift
//  Restaurant
//
//  Created by Sunil Sharma on 07/09/23.
//

import SwiftUI

struct MenuView: View {
    @State var menuItems:[MenuItem] = [MenuItem]()
    var dataService = DataService()
    
    var body: some View {
        VStack{
            
            HStack{
                
                Text("Menu")
                    .font(.largeTitle)
                    .bold()
                    .padding(.horizontal, 10)
                
                Spacer()
            }
            List(menuItems){ item in
                
                MenuListRow(item: item)
               
            }
            .listStyle(.plain)
            .onAppear{
                menuItems = dataService.getData()
            }
        }
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
