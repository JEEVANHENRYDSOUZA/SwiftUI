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
            
            
            GeometryReader{//this is the remaining space after the headerView
                geometryProxy in
                VStack(spacing:10){
                    Text("x:\(geometryProxy.frame(in:CoordinateSpace.local).origin.x)")
                    
                    
                    Text("y:\(geometryProxy.frame(in:CoordinateSpace.local).origin.y)")
                    
                    
                    
                    Text("x:\(geometryProxy.frame(in:.global).origin.x)")
                    Text("y:\(geometryProxy.frame(in:.global).origin.y)")

                }
                
            }.background(Color.pink)
            
            //the header view will occupy  a width which with respect to the full screen layout is y points below
            
        }.font(.title).padding()
        
    }
}





#Preview {
    ContentView()
}
