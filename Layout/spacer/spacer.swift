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
        
        VStack{
            
            Text("Spacer").foregroundStyle(.green).font(.largeTitle)
            
            Text("Introduction").foregroundStyle(.gray)
            
            Text("Spacer push things away either vertically or horizontally").background(.yellow)
            Image(systemName: "arrow.up.circle")
            
            Spacer()
            
            Image(systemName: "arrow.bottom.circle")
            
            HStack{
                
                Text("Horizontal Spacer")
                Image(systemName: "arrow.left.circle")
                Spacer()
                Image(systemName: "arrow.right.circle")
                
            }.padding(.horizontal)
            
            Color.yellow.frame(maxHeight: 50);
            
            
        }.font(.title)
    }
        
        
    }


#Preview {
    ContentView()
}
