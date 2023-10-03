//
//  GalleryView.swift
//  Restaurant
//
//  Created by Sunil Sharma on 07/09/23.
//

import SwiftUI

struct GalleryView: View {
    
    @State var photosData = [String]()
    @State var isSheetVisible: Bool = false
    @State var dataService = DataService()
    @State var selectedImage = ""
    var body: some View {
        
        VStack(alignment: .leading){
            
            Text("Gallery")
                .font(.largeTitle)
                .bold()
            
            GeometryReader{ proxy in
               
                ScrollView{
                  
                    LazyVGrid(columns: [GridItem(spacing: 10), GridItem(spacing: 10), GridItem(spacing: 10)], spacing: 10){
                        
                      
                        ForEach(photosData, id: \.self){ photo in
                            
                           
                            Image(photo)
                                .resizable()
                                .aspectRatio(contentMode: .fill)
                                .frame(maxWidth: (proxy.size.width-20)/3)
                                .clipped()
                                .clipShape(RoundedRectangle(cornerRadius: 5))
                                .onTapGesture {
                                    selectedImage = photo
                                    isSheetVisible.toggle()
                                }
                            
                        }
                        
                        
                    }
                }
                .scrollIndicators(.hidden)
            }
            
            
        }
        .padding(.horizontal, 10)
        .onAppear{
            photosData = dataService.getImages()
            
        }
        .sheet(isPresented: $isSheetVisible) {
            
            PhotoView(selectedImage: $selectedImage, 
                      isSheetVisible: $isSheetVisible)
       
        }
        
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView()
    }
}
