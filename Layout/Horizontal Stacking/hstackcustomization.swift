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




struct DescView:View{
    
    var desc:String
    var back:Color = .primary
    var body: some View{
        Text(desc)
            .padding().frame(maxWidth:.infinity).background(back).font(.title)
    }
}


struct ContentView: View {
    
    var body: some View {
        VStack(spacing:20){
            HeaderVew(title: "Hstack", subtitle: "Customization", desc: "Hstacks are views that can have modifiers applied to them to customize their appearance",back:.orange)
           
            HStack{
                Text("Leading")
                Text("Middle")
                Text("Trailing")
            }.padding().border(.orange)
            
            HStack{
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }
            HStack(spacing:20){
                Image(systemName: "a.circle")
                Image(systemName: "b.circle")
                Image(systemName: "c.circle")
            }.padding().background(RoundedRectangle(cornerRadius: 10).foregroundStyle(.orange))
            
            
        }
    }
}

#Preview {
    ContentView()
}
