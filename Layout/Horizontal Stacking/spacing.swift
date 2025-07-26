//
//  ContentView.swift
//  testiu
//
//  Created by Jeevan Henry Dsouza on 2025-07-25.
//

import SwiftUI

struct HeaderVew:View{
    var title : String
    var subtitle : String?
    var desc  : String?
    var back : Color = .primary
    var body: some View{
        
        
        VStack(alignment:.center,spacing:20){
            Text(title).font(.largeTitle)

            
            
            
            
            
            if let subtitle = subtitle{
                
                
                Text(subtitle)
                    .font(.subheadline).foregroundStyle(.gray)
            }
            
            
            if let desc = desc{
                
                
                Text(desc)
                    .padding().frame(maxWidth:.infinity).background(back)
            }
            
        }.font(.title)
    }
}


struct ContentView: View {
    
    var body: some View {
        
        HeaderVew(title: "Hstack", subtitle: "Spacing", desc: "The Hstack intializer allows us to sdset the spacing between all elements in the Hstack",back:.orange)
        
        HStack(spacing:20){
            Text("View 1")
            Text("View 2")
            Text("View 3")
            
        }.font(.title).border(Color.blue)
        Spacer()
        HStack(spacing:100){
            Image(systemName: "1.circle")
            Image(systemName: "2.circle")
            Image(systemName: "3.circle")
        }.border(Color.blue)
        Spacer()
    }
    
}

#Preview {
    ContentView()
}
