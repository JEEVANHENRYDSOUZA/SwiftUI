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
     
            HeaderVew(title: "Hstack", subtitle: "Introduction", desc: "An HStack arranges its children horizontally",back:.orange)
            
        HStack{
            Text("View 1")
            Text("View 2")
            Text("View 3")
            
        }.font(.title)
        }
    }

#Preview {
    ContentView()
}
