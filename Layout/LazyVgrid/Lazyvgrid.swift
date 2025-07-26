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
                    .padding().frame(maxWidth:.infinity).background(back).foregroundStyle(.black)
            }
            
        }.font(.title)
    }
}

struct TeamHeader: View {
    var body: some View {
        VStack{
            Text("Team").font(.title2)
            Image(systemName: "1.square.fill")
        }.frame(width:75,height:75).background(Rectangle().fill(Color.yellow).opacity(0.9))
    }
}
struct TeamFooter: View {
    var body: some View {
        VStack{
            Text("Team").font(.title2)
            Image(systemName: "1.square.fill")
        }.frame(width:75,height:75).background(Rectangle().fill(Color.yellow).opacity(0.9)).foregroundStyle(.white)
    }
}

struct DescView:View{
    
    var desc:String
    var back:Color = .primary
    var body: some View{
        Text(desc)
            .padding().frame(maxWidth:.infinity).foregroundStyle(.white)
    }
}


struct ContentView: View {
    
    
    var body: some View {
        
        VStack{
            HeaderVew(title: "Geometry Reader ",subtitle: "Intoduction",desc: "GeometryReader is a view that allows you to read the geometry of its child view",back:.clear)
            
            
            let gridItems = [GridItem(GridItem.Size.fixed(100)),GridItem(),GridItem()]
            LazyVGrid(columns:gridItems){
                Image(systemName: "1.circle").border(Color.red)
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
                Image(systemName: "4.circle")
                Image(systemName: "5.circle")
                Image(systemName: "6.circle")
            }.border(.blue)
            
        // when we say lazy is decided by the scroll in vstack we scroll veritcally up or down hence rows because ther is only 1 single column  are lazy
            
        //kazyvgrid is also veritcal pllacement but only differnece is we have more than 1 column but here there has to be something automatic
        //the automatic parrt is the remianing dimension
        }.font(.title)
        
    }
}





#Preview {
    ContentView()
}
