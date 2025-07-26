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
            HeaderVew(title: "ScrollViewReader",subtitle: "Anchor",desc: "You can control the position of where you want the view to go when callingscrollto",back:.yellow)
            
            ScrollViewReader{
                ScrollViewProxy in
                Button("Scroll 25 to tops"){
                    ScrollViewProxy.scrollTo(25,anchor: .top)
                }
                ///the clicked item will be at the top
                ScrollView{
                    ForEach(1...150,id:\.self){
                        index in
                        Image(systemName: "\(index).square.fill").font(.largeTitle).frame(height:70) .foregroundStyle(index == 25 ? .red : .gray)
                        
                    }
                }
            }
           
        }
        
    }
}





#Preview {
    ContentView()
}
