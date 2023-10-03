//
//  PhotoView.swift
//  Restaurant
//
//  Created by Sunil Sharma on 28/09/23.
//

import SwiftUI

struct PhotoView: View {
    
    @Binding var selectedImage: String
    @Binding var isSheetVisible: Bool
    
    var body: some View {
        ZStack(){
           
            Image(selectedImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
          
            
            VStack{
                HStack{
                    Spacer()
                    Button(action: {
                        isSheetVisible = false
                    }) {
                        Image(systemName: "xmark.circle")
                            .scaleEffect(2)
                    }
                    .padding()
                    .foregroundStyle(Color.black)
                }
                Spacer()
               
                
               
            }
        }
    }
}

#Preview {
    PhotoView(selectedImage: Binding.constant("gallery1"), isSheetVisible: Binding.constant(true))
}
