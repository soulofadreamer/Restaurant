//
//  AboutView.swift
//  Restaurant
//
//  Created by Sunil Sharma on 07/09/23.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading){
                
                Text("About")
                    .font(.largeTitle)
                    .bold()
                    
                
                Image("restaurant-inside")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.bottom)
                
                Text("Sukiyabashi Jiro (すきやばし次郎, Sukiyabashi Jirō) is a sushi restaurant in Ginza, Chūō, Tokyo, Japan. It is owned and operated by sushi master Jiro Ono. It was the first sushi restaurant in the world to receive three stars from the Michelin Guide, although it was removed from the Michelin Guide in November 2019 as it does not receive reservations from the general public, instead requiring reservations to be made through the concierge of a luxury hotel.")
                    .padding(.bottom)
                
                Image("map")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .padding(.bottom)
                
                
                Text("""
                     Tsukamoto Sogyo Building
                     Basement Floor 1
                     2-15, Ginza 4-chome
                     Chūō, Tokyo
                     """)
                
            }
            .padding(.horizontal, 10)
        }
        .scrollIndicators(.hidden)
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
