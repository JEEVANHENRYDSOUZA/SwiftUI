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
                    .padding().frame(maxWidth:.infinity).background(back).foregroundStyle(.white)
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
        
        VStack(spacing:20){
            
            Text("Spacer").foregroundStyle(.green).font(.largeTitle)
            
            Text("Evenly Spaced").foregroundStyle(.gray)
            
            Text("Use Spacer to evenly space views horizontally or vertically").frame(maxWidth: .infinity).background(.yellow)
            Text("After")
            
            
            HStack{
                Spacer()
                VStack(alignment:.leading){
                    Text("Names").font(.largeTitle).underline()
                    Text("Chase")
                    Text("Rodrigo")
                    Text("Mark")
                    Text("Evans")
                }
                Spacer()
                VStack(alignment:.leading){
                    Text("Color").font(.largeTitle).underline()
                    Text("Red")
                    Text("Orange")
                    Text("Green")
                    Text("Blue")
                }
                Spacer()
                
                
            }
            
        }.font(.title)
    }
        
        
    }


#Preview {
    ContentView()
}
